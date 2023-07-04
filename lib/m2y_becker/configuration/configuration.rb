module M2yBecker
  class Configuration
    attr_writer :main_url, :username, :password, :auth

    def initialize
      @main_url = nil
      @username = nil
      @password = nil
      @auth = nil
    end

    def password
      @password
    end

    def username
      @username
    end

    def auth
      @auth
    end

    def main_url
      @main_url
    end

  end
end
