module M2yBecker
  class CdtBillet <  Base

    def findBillet(id_bill, id_bank_account)
      response = get(M2yBecker.configuration.main_url + BilletPaths::GENERAL + id_bill.to_s + BilletPaths::PDF)
      resp = {}
      pdf_io = StringIO.new(response.body)
      resp.merge!('pdfFile' => pdf_io)
      resp.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(resp)
    end

    def registerBillet(id_bill, id_bank_account)
      body = {}
      headers = base_headers
      headers["Content-Length"] = "0"
      response = post(M2yBecker.configuration.main_url + BilletPaths::BANK_GENERAL + id_bill.to_s + BilletPaths::BILLETS + "?idContaBancaria=#{id_bank_account}", body, headers)
      response.parsed_response&.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(response)
    end

    def digitableLine(id_bill, id_bank_account)
      body = {}
      headers = base_headers
      headers["Content-Length"] = "0"
      response = post(M2yBecker.configuration.main_url + BilletPaths::BANK_GENERAL + id_bill.to_s + BilletPaths::BILLETS+ "?idContaBancaria=#{id_bank_account}", body, headers)
      CdtModel.new(response)
    end

    def findBillPDF(id_bill)
      response = get(M2yBecker.configuration.main_url + BilletPaths::GENERAL + id_bill.to_s + BilletPaths::PDF)
      resp = {}
      pdf_io = StringIO.new(response.body)
      resp.merge!('pdfFile' => pdf_io)
      resp.merge!('statusCode' => response.response.code.to_i)
      CdtModel.new(resp)
    end
  end
end
