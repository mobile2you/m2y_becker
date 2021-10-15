module M2yBecker

  class CdtUser < CdtModule

    def findUser(id)
      url = @url + CUSTOMER_ID_PATH + id.to_s
      response = @request.get(url)
      CdtModel.new(response)
    end

    def findUserCpf(cpf_user)
      response = @request.get(@url + QUERY_CPF_PATH + "cpf=#{cpf_user.to_s})"
      CdtModel.new(response)
    end

    
    # Alterar Portadores 
    def ChangeUser(idCartao,id)
      response = @request.patch(@url + USERS_PATH + "id?id_fatura=#{idCartao.to_s}")
      CdtModel.new(response)
      
    end 

  end
end


