module M2yBecker

  class CdtCycle < CdtModule

    def findCycle()
      response = @request.get(@url + CYCLE_PATH, body)
      CdtModel.new(response)
    end

    def changeCycle(idCartao, idCiclo)
      body = {:idciclovencimento => idCiclo}
      response = @request.patch(@url + CHANGECYCLE_PATH + "idciclovencimento=#{idCiclo.to_s}&" + "id_fatura=#{idCartao.to_s}", body)
      CdtModel.new(response)
    end 
  end
  
end 
  

