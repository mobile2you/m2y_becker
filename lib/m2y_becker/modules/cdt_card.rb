module M2yBecker

  class CdtCard < CdtModule

    def findCard(id)
      response = @request.get(@url + CARD_PATH + id.to_s)
      CdtModel.new(response)
    end

    # CADASTRAR A SENHA DO CARTAO  
    def registerPassword(id)
      response = @request.get(@url + CARD_PATH + id.to_s + PASSWORD_PATH)
      CdtModel.new(response)
    end


  end
end
