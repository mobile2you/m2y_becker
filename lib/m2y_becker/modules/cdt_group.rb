module M2yBecker

  class CdtGroup < CdtModule

    def findGroups
      response = @request.get(@url + GROUPS_PATH)
      CdtModel.new(response)
    end

  end
end
