module M2yBecker
  class CdtCard < CdtModule
    def findCard(id_cartao)
      response = @request.get(@url + CARD_PATH + "/buscar/#{id_cartao}")
      CdtModel.new(response)
    end

    def findCardByClient(id_cliente)
      response = @request.get(@url + CARD_PATH + "consultar-por-titular?idClienteTitular=#{id_cliente}")
    end

    def registerPassword(id_cartao, senha_cartao)
      body = { :senha_cartao => senha_cartao.to_s }

      response = @request.patch(@url + CARD_PATH + id_cartao.to_s + PASSWORD_PATH, body)
      CdtModel.new(response)
    end

    def changePassword(id_cartao, senha_cartao, senha_nova)
      body = { :senha_cartao => senha_cartao, :senha_nova => senha_nova }

      response = @request.patch(@url + CARD_PATH + "#{id_cartao}/alterar-senha", body)
      CdtModel.new(response)
    end
  end
end
