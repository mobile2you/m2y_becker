module M2yBecker
  class CdtCard < CdtModule
    def findCard(id_cartao)
      response = @request.get(@url + CARD_PATH + "/buscar/#{id_cartao}")
      CdtModel.new(response)
    end

    def findCardByClient(id)
      response = @request.get(@url + CARD_PATH + "consultar-por-titular?idClienteTitular=#{id}")
      CdtModel.new(response)
    end

    def registerPasswordCard(id_cartao, senha)
      headers = [{ :key => "senha", :value => senha }]
      response = @request.patch(@url + CARD_PATH + id_cartao.to_s + PASSWORD_PATH, nil, headers)
      CdtModel.new(response)
    end

    def changePasswordCard(id_cartao, senha_antiga, senha_nova)
      headers = [{ :key => "senha_antiga", :value => senha_antiga }, { :key => "senha_nova", :value => senha_nova }]
      response = @request.patch(@url + CARD_PATH + "#{id_cartao}/alterar-senha", nil, headers)
      CdtModel.new(response)
    end

    def unblockCard(id_cartao)
      body = { "observacao": "Cartao desbloqueado" }

      response = @request.patch(@url + CARD_PATH + "#{id_cartao}/desbloqueio", body)
      CdtModel.new(response)
    end

    def blockCard(id_cartao)
      body = {
        "idTipoBloqueio": 1,
        "observacao": "Cartao bloqueado temporariamente",
      }

      response = @request.patch(@url + CARD_PATH + "#{id_cartao}/bloqueio", body)
      CdtModel.new(response)
    end

    def checkCardPassword(id_cartao, senha)
      headers = [{ :key => "senha", :value => senha }]
      response = @request.postWithHeader(@url + CARD_PATH + "#{id_cartao}/autenticar?autenticarCartaoBloqueado=true", nil, headers)
      CdtModel.new(response)
    end

    def changePasswordWithoutValidation(id_cartao, senha_nova)
      headers = [{ :key => "senha_nova", :value => senha_nova }]
      response = @request.patch(@url + CARD_PATH + "#{id_cartao}/alterar-senha-sem-validacao", nil, headers)
      CdtModel.new(response)
    end

    def activateVirtualCvv(id)
      response = @request.patch(@url + CARD_PATH + "ativar-cvvVirtual-cartao/#{id}")
      CdtModel.new(response)
    end

    def deactivateVirtualCvv(id)
      response = @request.patch(@url + CARD_PATH + "inativar-cvvVirtual-cartao/#{id}")
      CdtModel.new(response)
    end

    def getVirtualCard(id)
      response = @request.get(@url + CARD_PATH + "buscar-cartaoVirtual/#{id}")
      CdtModel.new(response)
    end

    def generateVirtualCvv(id)
      response = @request.get(@url + CARD_PATH + "gerar-cvvVirtual-cartao/#{id}")
      CdtModel.new(response)
    end
  end
end
