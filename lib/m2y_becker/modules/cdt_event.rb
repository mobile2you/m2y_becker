module M2yBecker
  class CdtEvent < Base
    def findEvents(id, start_date, end_date)
      response = get(M2yBecker.configuration.main_url + UserPaths::GENERAL + id.to_s + UserPaths::HISTORY_PATH + "?dataInicial=#{start_date}&" + "dataFinal=#{end_date}")
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      puts response
      CdtModel.new(response)
    end
  end
end
