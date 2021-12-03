module M2yBecker
  class CdtBill < CdtModule
    def findCurrentBill(id)
      response = @request.get(@url + USERS_PATH + id.to_s + CURRENT_BILL_PATH)
      CdtModel.new(response)
    end

    def findCloseBill(id)
      response = @request.get(@url + USERS_PATH + id.to_s + CLOSE_BILL_PATH)
      CdtModel.new(response)
    end

    def findPeriodBill(id, start_date, end_date)
      response = @request.get(@url + USERS_PATH + id.to_s + PERIOD_BILL_PATH + "data-inicial=#{start_date}&" + "data-final=#{end_date}")
      CdtModel.new(response)
    end

    def findDetailBill(id, id_bill)
      @id_bill = id_bill
      response = @request.get(@url + USERS_PATH + id.to_s + DETAIL_BILL_PATH + "id_fatura=#{@id_bill}")
      CdtModel.new(response)
    end

    def findBillPDF(id_bill)
      response = @request.get(@url + PDF_BILL_PATH + id_bill.to_s)
      CdtModel.new(response)
    end
  end
end
