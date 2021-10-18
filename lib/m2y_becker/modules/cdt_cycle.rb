module M2yBecker

  class CdtCycle < CdtModule

    def findCycle()
      response = @request.get(@url + CYCLE_PATH, body)
      CdtModel.new(response)
    end


    def changeCycle(idCartao, idCiclo)
      body = {:idciclovencimento => idCiclo}
      response = @request.patch(@url + USERS_PATH + idCartao.to_s + CHANGECYCLE_PATH , body)
      CdtModel.new(response)
    end 
  end
  
end 
  

