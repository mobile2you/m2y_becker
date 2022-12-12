module M2yAdiq
  class Auth < Base

    def initialize
      generate_token
    end

    private
    def generate_token

      url = URI(M2yAdiq.configuration.main_url + AUTH_PATH)
      puts url
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["Content-Type"] = "application/json"

      request.body = JSON.dump({
                                 "username": "pjpag",
                                 "password": "Mudar@123"
      })

      response = https.request(request)
      puts response.read_body

      token = JSON.parse(response.read_body)["access_token"]
      # puts token

      TokenHelper.save_token(token)
      token
    end
  end
end
