module M2yBecker
  class CdtAuth
    def initialize(user, pass, env)
      @user = user
      @pass = pass
      @url = CdtHelper.homologation?(env) ? TOKEN_HML : TOKEN_PRD
    end

    def generateToken
      url = @url + TOKEN_PATH
      body = {login: @user, senha: @pass}
      puts url

      req = HTTParty.post(url,
                          body: body.to_json,
                          headers: {"Content-Type": "application/json"}
                          )
      response = req.parsed_response
      puts response
      token = CdtModel.new(response)
      token.access_token = token.data
      M2yBecker::CdtRequest.setToken(token)
      CdtHelper.saveToken(@user, token.access_token)
      CdtHelper.generate_general_response(token)
    end
  end
end
