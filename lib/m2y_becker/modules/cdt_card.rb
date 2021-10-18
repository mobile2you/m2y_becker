module M2yBecker

  class CdtCard < CdtModule

    def findCard(id)
      response = @request.get(@url + CARD_PATH + id.to_s)
      CdtModel.new(response)
    end

      # ALTERA SENHA 
    def changePassword(id,idCiclo)
      body = {:idciclovencimento => idCiclo}
      response = @request.get(@url + USERS_PATH + id.to_s + CHANGECYCLE_PATH + idCiclo.to_s, body)
      CdtModel.new(response)
    end 

    # PATCH CADASTRAR E ALTERA A SENHA DO CARTAO  
    def registerPassword(id)
      response = @request.get(@url + CARD_PATH + id.to_s + PASSWORD_PATH)
      CdtModel.new(response)
    end


  end
end
