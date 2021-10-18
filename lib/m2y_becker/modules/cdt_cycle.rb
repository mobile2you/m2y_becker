module M2yBecker

  class CdtCycle < CdtModule

    def findCycle()
      response = @request.get(@url + CYCLE_PATH, body)
      CdtModel.new(response)
    end

    def changeCycle(idCartao, idCiclo)
      body = {:idciclovencimento => idCiclo}
      response = @request.patch(@url + USERS_PATH + idCartao.to_s + CHANGECYCLE_PATH + "?idciclovencimento=#{idCiclo.to_s}", body)
      CdtModel.new(response)
    end 


    def changePassword(id)
      response = @request.get(@url + USERS_PATH + id.to_s + CHANGECYCLE_PATH)
      CdtModel.new(response)
    end 
  end
  
end 
  

