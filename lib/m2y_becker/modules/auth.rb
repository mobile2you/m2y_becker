module M2yBecker
  class Auth < Base

    def initialize
      generate_token
    end

    private
    def generate_token

      url = URI(M2yBecker.configuration.main_url + AUTH_PATH)
      puts url
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["Content-Type"] = "application/x-www-form-urlencoded"
      header =  "Basic #{M2yBecker.configuration.auth}".gsub(/\n/, '')
      puts header
      request["Authorization"] = header

      request.body = "grant_type=password&username=#{M2yBecker.configuration.username}&password=#{M2yBecker.configuration.password}"

      response = https.request(request)
      puts response.read_body

      token = JSON.parse(response.read_body)["access_token"]
      # puts token

      TokenHelper.save_token(token)
      token
    end
  end
end
