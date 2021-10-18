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

    
    #  ALTERA O PORTADOR 
    def changeUser(id,idFatura)
      body = {:fatura => idFatura}
      response = @request.patch(@url + USERS_PATH + "#{id.to_s}?id_fatura=#{idFatura.to_s}", body )
      CdtModel.new(response)
      
    end 

  end
end



