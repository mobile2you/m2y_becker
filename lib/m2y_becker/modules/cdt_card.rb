module M2yBecker

  class CdtCard < CdtModule

    def findCard(id)
      response = @request.get(@url + CARD_PATH + id.to_s)
      CdtModel.new(response)
    end

  end
end
