module M2yBecker
  class CdtBillet < CdtModule
    def findBillet(id_bill, id_bank_account)
      response = @request.get(@url + BILLET_PATH + "#{id_bill}/ficha-compensacao?idContaBancaria=#{id_bank_account}")
      CdtModel.new(response)
    end

    def registerBillet(id_bill, id_bank_account)
      body = { :id_bank_account => id_bank_account }
      response = @request.post(@url + BILLET_PATH + "#{id_bill}/registrar?idContaBancaria=#{body}")
      CdtModel.new(response)
    end

    def digitableLine(id_bill, id_bank_account)
      response = @request.get(@url + BILLET_PATH + "#{id_bill}/documento-pagamento?idContaBancaria=#{id_bank_account}")
      CdtModel.new(response)
    end
  end
end
