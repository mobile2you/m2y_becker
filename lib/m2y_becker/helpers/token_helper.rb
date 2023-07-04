module M2yBecker
  class TokenHelper

    def self.save_token(token)
      if !token.nil?
        ENV["BCK_TOKEN"] = token.to_s
        ENV["BCK_TOKEN_EXPIRY"] = (Time.now + 1500).to_s
      end
    end

    def self.should_refresh_token?
      finish_date = ENV["BCK_TOKEN_EXPIRY"]
      finish_date.nil? || (Time.parse(finish_date.to_s) - 500) < Time.now
    end

    def self.token
      ENV["BCK_TOKEN"]
    end

  end
end
