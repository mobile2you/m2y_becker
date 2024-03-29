module M2yBecker
  require 'httparty'
  class Base
    def initialize(env = nil, user = nil, pass = nil); end

    def check_token
      Auth.new if TokenHelper.should_refresh_token?
    end

    def post(url, body, headers = nil)
      check_token
      headers = base_headers if headers.nil?
      puts "Sending POST request to URL: #{url}"
      puts body
      begin
        response = HTTParty.post(url, headers: headers, body: body.to_json)
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def patch(url, body, headers = nil)
      check_token
      headers = base_headers if headers.nil?
      puts "Sending PATCH request to URL: #{url}"
      begin
        response = HTTParty.patch(url, headers: headers, query: body, body: body.to_json)
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def put(url, body, headers = nil)
      check_token
      headers = base_headers if headers.nil?
      puts "Sending PUT request to URL: #{url}"
      begin
        response = HTTParty.put(url, headers: headers, body: body.to_json)
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def get(url)
      check_token
      puts "Sending GET request to URL: #{url}"
      begin
        response = HTTParty.get(url, headers: base_headers)
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def base_headers
      {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Accept-Encoding": nil,
        "Authorization":  "Bearer #{TokenHelper.token}",
      }
    end

    def auth_headers
      {
        "Authorization":  "Bearer #{TokenHelper.token}"
      }
    end

    def timeout_response
      {
        status_code: 408,
        message: 'Houve um erro inesperado, tente novamente mais tarde'
      }
    end
  end
end
