module M2yBecker
  class CdtGroup < Base
    def findGroups
      response = get(M2yBecker.configuration.main_url + GroupsPaths::GENERAL)
      CdtModel.new(response)
    end
  end
end
