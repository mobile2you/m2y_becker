module M2yAdiq
  class Configuration
    attr_writer :main_url, :username, :password

    def initialize
      @main_url = nil
      @username = nil
      @password = nil
    end

    def password
      @password
    end

    def username
      @username
    end

    def main_url
      @main_url
    end

  end
end
