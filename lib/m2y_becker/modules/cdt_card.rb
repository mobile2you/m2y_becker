module M2yBecker
  class CdtCard < Base
    def findCard(id)
      response = get(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id.to_s)
      CdtModel.new(response)
    end

    def findCardByClient(id)
      response = get(M2yBecker.configuration.main_url + CardsPaths::GENERAL + CardsPaths::ORIGINAL_PATH + "?idClienteTitular=#{id}")
      status_code = response.response.code.to_i
      if status_code.eql?(200)
        parsed_response = response.parsed_response
        response_hash = parsed_response.first
        resp = response_hash.merge!('statusCode' => response.response.code.to_i)
        CdtModel.new(resp)
      else
        CdtModel.new(response)
      end
    end

    def registerPasswordCard(id_cartao, senha)
      headers = base_headers
      headers["senha"] = senha
      response = post(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::PASSWORD_PATH, {}, headers)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def changePasswordCard(id_cartao, senha_antiga, senha_nova)
      headers = base_headers
      headers["senha_antiga"] = senha_antiga
      headers["senha_nova"] = senha_nova
      response = put(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::PASSWORD_PATH, {}, headers)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def unblockCard(id_cartao)
      body = { "observacao": 'Cartao desbloqueado' }

      response = patch(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::UNLOCK_PATH, body)
      status_code = response.response.code.to_i
      if status_code.eql?(200)
        parsed_response = response.parsed_response
        response_hash = parsed_response.nil? ? {} : parsed_response.first
        resp = response_hash.merge!('statusCode' => response.response.code.to_i)
        CdtModel.new(resp)
      else
        CdtModel.new(response)
      end
    end

    def blockCard(id_cartao)
      body = {
        "idTipoBloqueio": 1,
        "observacao": 'Cartao bloqueado temporariamente',
      }

      response = patch(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::BLOCK_PATH, body)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def checkCardPassword(id_cartao, senha)
      headers = base_headers
      headers["senha"] = senha
      response = post(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id_cartao.to_s + CardsPaths::AUTH_PASSWORD_PATH + "?autenticarCartaoBloqueado=true", {}, headers)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def generateVirtualCvv(id_cartao)
      response = post(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id_cartao.to_s + CardsPaths::CVV_PATH, {})
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def deactivateVirtualCvv(id_cartao)
      response = patch(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id_cartao.to_s + CardsPaths::DEACTIVATE_CVV, {})
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def activateVirtualCvv(id_cartao)
      response = patch(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id_cartao.to_s + CardsPaths::ACTIVATE_CVV, {})
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def getVirtualCard(id)
      response = get(M2yBecker.configuration.main_url + CardsPaths::VIRTUALS + id.to_s)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def send_temporary_password(id)
      response = patch(M2yBecker.configuration.main_url + CardsPaths::GENERAL + id.to_s + CardsPaths::SMS_PASSWORD_PATH, {})
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end
  end
end
