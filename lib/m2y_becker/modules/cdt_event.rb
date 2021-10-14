module M2yBecker

  class CdtEvent < CdtModule

    def findEvents(id, start_date, end_date)
      url = @url + USERS_PATH + id.to_s + HISTORY_PATH + "?dataInicial=#{start_date}&dataFinal=#{end_date}"
      response = @request.get(url)
      CdtModel.new(response)
    end

  end
end
