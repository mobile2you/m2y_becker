module M2yAdiq
  require 'httparty'
  class Base


    def self.check_token
      if TokenHelper.should_refresh_token?
        token = Auth.new
      end
    end


    def self.post(url, body, headers = nil)
      check_token
      headers = base_headers if headers.nil?
      puts "Sending POST request to URL: #{url}"
      puts body
      begin
        # response = HTTParty.post(url, headers: headers, body: body.to_json, debug_output: $stdout)
        response = HTTParty.post(url, headers: headers, body: body.to_json)
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def self.post_data(url, body, headers = nil)
      check_token

      url = URI(url)

      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["Authorization"] = "Basic #{M2yAdiq.configuration.liveness_auth}"
      form_data = [['image_1', body[:image_1]],['image_2', body[:image_2]]]
      request.set_form form_data, 'multipart/form-data'
      response = https.request(request)
      response.read_body

    end

    def self.post_empty_data(url, headers = nil)
      check_token
      puts url
      url = URI(url)

      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["Authorization"] = "Basic #{M2yAdiq.configuration.liveness_auth}"
      response = https.request(request)
      response.read_body

    end



    def self.get(url)
      check_token
      puts "Sending GET request to URL: #{url}"
      begin
        response = HTTParty.get(url, headers: base_headers)
      rescue Timeout::Error
        return timeout_response
      end
      puts response
      response
    end

    def self.base_headers
      {
        "Content-Type": "application/json",
        "Authorization": TokenHelper.token,
      }
    end

    def self.timeout_response
      {
        status_code: 408,
        message: 'Houve um erro inesperado, tente novamente mais tarde'
      }
    end

    def self.liveness_headers
      headers = base_headers
      headers["Authorization"] = "Basic #{M2yAdiq.configuration.liveness_auth}"
      headers
    end


  end
end
