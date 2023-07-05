module M2yBecker
  class CdtCycle < Base
    def changeCycle(idPortador, idCiclo)
      body = { :idPortador => idPortador, idCiclo: idCiclo  }
      response = put(M2yBecker.configuration.main_url + CyclesPaths::GENERAL, body, base_headers)
      if response.body.nil? || response.body.empty?
        response = {}
      end
      CdtModel.new(response)
    end

    def findCycle
      response = get(M2yBecker.configuration.main_url + CyclesPaths::GENERAL)
      CdtModel.new(response)
    end
  end
end
