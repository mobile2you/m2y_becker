module M2yBecker
  class CdtUser < Base
    def findUser(id)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s)
      CdtModel.new(response)
    end

    def findInformation(id)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s + UserPaths::INFO_PATH)
      CdtModel.new(response)
    end

    def findPhone(id)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s + UserPaths::PHONES_PATH)
      parsed_response = response.parsed_response
      CdtModel.new(parsed_response.first)
    end

    def findUserCpf(cpf_user)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + UserPaths::CPF_PATH + "?cpf=#{cpf_user}")
      puts response
      CdtModel.new(response)
    end

    def changeUser(id, body)
      response = patch(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s, body)
      CdtModel.new(response)
    end

    # def recieveSms(id, phone_id)
    #   @request.patch(@url + USERS_PATH + "#{id}/telefones/recebe-sms?idCelular=#{phone_id}")
    # end

    # def legalBlock(id)
    #   @request.get(@url + LEGAL_BLOCK + "?id%20do%20portador=#{id}")
    # end
  end
end
