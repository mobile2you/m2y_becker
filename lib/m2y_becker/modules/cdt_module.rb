module M2yBecker

  class CdtModule

    def startModule(user, pass, env)
      @auth = CdtAuth.new(user, pass, env)
      @user = user
      @pass = pass
      refreshToken
      @request = CdtRequest.new(nil, @user, @pass)
      @url = CdtHelper.homologation?(env) ? URL_HML : URL_PRD
    end

    def refreshToken
      if CdtHelper.shouldRefreshToken?(@user)
        @auth.generateToken
        @request = CdtRequest.new(nil, @user, @pass)
      end
    end

    def generateResponse(input)
      CdtHelper.generate_general_response(input)
    end

    def jsonHeader
      {:key => 'Content-Type', :value => "application/json"}
    end
  end

end
