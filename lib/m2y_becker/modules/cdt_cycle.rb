module M2yBecker

  class CdtCycle < CdtModule

    def findCycle()
      response = @request.get(@url + CYCLE_PATH, body)
      CdtModel.new(response)
    end

    # Alterar ciclos 

    def changeCycle(idCartao, idCiclo, id)
      body = {:idciclovencimento => idCiclo}
      response = @request.patch(@url + USERS_PATH + id.to_s + CHANGECYCLE_PATH + idCartao.to_s, body)
      CdtModel.new(response)
    end 
  end
  
end 
  

