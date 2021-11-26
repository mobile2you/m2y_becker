module M2yBecker
  class CdtUser < CdtModule
    def findUser(id)
      url = @url + CUSTOMER_ID_PATH + id.to_s
      response = @request.get(url)
      CdtModel.new(response)
    end

    def findInfomation(id)
      response = @request.get(@url + USERS_PATH + "#{id}/informacoes")
      CdtModel.new(response)
    end

    def findUserCpf(cpf_user)
      response = @request.get(@url + QUERY_CPF_PATH + "cpf=#{cpf_user}")
      CdtModel.new(response)
    end

    def changeUser(id, body)
      response = @request.patch(@url + USERS_PATH + id.to_s, body)
      CdtModel.new(response)
    end

    def findPhone(id)
      @request.get(@url + USERS_PATH + "#{id}/telefones/")
    end
  end
end
