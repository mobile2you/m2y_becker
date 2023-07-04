module M2yBecker
  class CdtCard < Base


    def findCard(id)
      response = get(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id.to_s)
      CdtModel.new(response)
    end

    def findCardByClient(id)
      response = get(M2yBecker.configuration.main_url + CardsPaths::GENERAL + CardsPaths::ORIGINAL_PATH + "?idClienteTitular=#{id}")
      CdtModel.new(response)
    end

    def registerPasswordCard(id_cartao, senha)
      headers = base_headers
      headers["senha"] = senha
      response = post(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::PASSWORD_PATH, {}, headers)
      CdtModel.new(response)
    end

    def changePasswordCard(id_cartao, senha_antiga, senha_nova)
      headers = base_headers
      headers["senha_antiga"] = senha_antiga
      headers["senha_nova"] = senha_nova
      response = put(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::PASSWORD_PATH, {}, headers)
      CdtModel.new(response)
    end


    def unblockCard(id_cartao)
      body = { "observacao": "Cartao desbloqueado" }

      response = patch(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::UNLOCK_PATH, body)
      CdtModel.new(response)
    end

    def blockCard(id_cartao)
      body = {
        "idTipoBloqueio": 1,
        "observacao": "Cartao bloqueado temporariamente",
      }

      response = patch(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::BLOCK_PATH, body)
      CdtModel.new(response)
    end


    def checkCardPassword(id_cartao, senha)
      headers = base_headers
      headers["senha"] = senha
      response = post(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::AUTH_PASSWORD_PATH + "?autenticarCartaoBloqueado=true", {}, headers)
      CdtModel.new(response)
    end


    #erro
    # def changePasswordWithoutValidation(id_cartao, senha_nova)
    #   headers = [{ :key => "senha_nova", :value => senha_nova }]
    #   response = @request.patch(@url + CARD_PATH + "#{id_cartao}/alterar-senha-sem-validacao", nil, headers)
    #   CdtModel.new(response)
    # end



    def generateVirtualCvv(id_cartao)
      response = post(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id_cartao.to_s + CardsPaths::CVV_PATH, {})
      CdtModel.new(response)
    end

    def deactivateVirtualCvv(id_cartao)
      response = patch(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id_cartao.to_s + CardsPaths::DEACTIVATE_CVV, {})
      CdtModel.new(response)
    end

    def activateVirtualCvv(id_cartao)
      response = patch(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id_cartao.to_s + CardsPaths::ACTIVATE_CVV, {})
      CdtModel.new(response)
    end


    def getVirtualCard(id)
      response = get(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id.to_s)
      CdtModel.new(response)
    end


    def send_temporary_password(id)
      response = patch(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id.to_s + CardsPaths::SMS_PASSWORD_PATH, {})
      CdtModel.new(response)
    end


  end
end
