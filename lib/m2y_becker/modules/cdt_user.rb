module M2yBecker
  class CdtUser < Base
    def findUser(id)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s)
      CdtModel.new(response)
    end

    def findInformation(id)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s + UserPaths::INFO_PATH)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
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

    def recieveSms(id, phone_id)
      body = { idCelular: phone_id }
      response = patch(M2yBecker.configuration.main_url + UserPaths::SMS_PATH + id.to_s + UserPaths::PHONE_PATH, body)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end
  end
end
