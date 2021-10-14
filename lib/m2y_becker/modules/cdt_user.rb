module M2yBecker

  class CdtUser < CdtModule

    def findUser(id)
      url = @url + CUSTOMER_ID_PATH + id.to_s
      response = @request.get(url)
      CdtModel.new(response)
    end

  end
end
