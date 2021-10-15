module M2yBecker

  class CdtBill < CdtModule

    def findCurrentBill(id)
      response = @request.get(@url + USERS_PATH + id.to_s + CURRENT_BILL) 
      CdtModel.new(response)
    end
    
    def findCloseBill(id)
      response = @request.get(@url + USERS_PATH + id.to_s + CLOSE_BILL) 
      CdtModel.new(response)
    end 

    def findPeriodBill(id)
      @start_date= "data-inicial=1990-01-18&"
      @end_date = "data-final=2021-01-01"
      response = @request.get(@url + USERS_PATH + id.to_s + PERIOD_BILL + @start_date + @end_date ) 
      CdtModel.new(response)
    end 


    # FATURA DETALHADA VEM AQUI (ADICIONAR)
    
    def findBillPDF(id, id_bill)
      @id_bill = id_bill
      response = @request.get(@url + USERS_PATH + id.to_s + DETAIL_BILL + "id_fatura=#{@id_bill.to_s}") 
      CdtModel.new(response)
    end 



  end
    
end