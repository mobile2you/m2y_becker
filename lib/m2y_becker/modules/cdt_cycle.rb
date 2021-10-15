module M2yBecker

    class CdtCycle < CdtModule
  
      def findCycle()
        response = @request.get(@url + CYCLE_PATH )
        CdtModel.new(response)
      end
  
    end
  end
  