module M2yAdiq
  class TokenHelper

    def self.save_token(token)
      if !token.nil?
        ENV["ADIQ_TOKEN"] = token.to_s
        ENV["ADIQ_TOKEN_EXPIRY"] = (Time.now + 1500).to_s
      end
    end

    def self.should_refresh_token?
      finish_date = ENV["ADIQ_TOKEN_EXPIRY"]
      finish_date.nil? || (Time.parse(finish_date.to_s) - 500) < Time.now
    end

    def self.token
      ENV["ADIQ_TOKEN"]
    end

  end
end
