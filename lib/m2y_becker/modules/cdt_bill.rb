module M2yBecker
  class CdtBill < Base
    def findCurrentBill(id)
      response = get(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::CURRENT)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def findCloseBill(id)
      response = get(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::CLOSE_BILL_PATH)
      CdtModel.new(response)
    end

    def findPeriodBill(id, start_date, end_date)
      response = get(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::PERIOD_BILL_PATH + "?dataInicial=#{start_date}&" + "dataFinal=#{end_date}")
      puts response
      CdtModel.new(response)
    end

    def findDetailBill(id, id_bill)
      response = get(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::DETAILS_BILL_PATH + "?idFatura=#{id_bill}")
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      puts response

      CdtModel.new(response)
    end

    def acceptBillEmail(id, email)
      body = { :email => email }
      headers = base_headers
      headers["Content-Length"] = "0"
      response = post(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::DIGITAL_BILL_PATH, body, headers)
      if response.body.nil? || response.body.empty?
        response = {}
      end
      CdtModel.new(response)
    end

    def cancelBillEmail(id, email)
      body = { :email => email }
      headers = base_headers
      headers["Content-Length"] = "0"
      response = post(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::CANCEL_DIGITAL_BILL_PATH, body, headers)
      if response.body.nil? || response.body.empty?
        response = {}
      end
      CdtModel.new(response)
    end

    def acceptBillSms(id, id_phone)
      body = { :idCelular => id_phone }
      response = patch(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::SMS_BILL_PATH, body, base_headers)
      if response.body.nil? || response.body.empty?
        response = {}
      end
      CdtModel.new(response)
    end

    def cancelBillSms(id, id_phone)
      body = { :idCelular => id_phone }
      response = patch(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::CANCEL_SMS_BILL_PATH, body, base_headers)
      if response.body.nil? || response.body.empty?
        response = {}
      end
      CdtModel.new(response)
    end

    def futureBill(id)
      response = get(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::FUTURE_BILL_PATH)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def installmentInfo(id)
      response = get(M2yBecker.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::PARCELING_INFO_PATH)
      CdtModel.new(response)
    end
  end
end
