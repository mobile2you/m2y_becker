module M2yAdiq
  class Onboarding < Base

    def findCurrentBill(id)
      response = get(M2yAdiq.configuration.main_url + BillPaths::GENERAL + id.to_s + BillPaths::CURRENT)
      CdtModel.new(response)
    end

    # def findCurrentBill(id)
    #   response = @request.get(@url + USERS_PATH + id.to_s + CURRENT_BILL_PATH)
    #   CdtModel.new(response)
    # end

    # def self.store_list
    #   response = post(M2yAdiq.configuration.main_url + OnboardingPaths::STORE_LIST, {})
    #   response.parsed_response
    # end


    # def self.register(body)
    #   response = post(M2yAdiq.configuration.main_url + OnboardingPaths::REGISTER, body)
    #   response.parsed_response
    # end

    # def self.confirm_register(body)
    #   response = post(M2yAdiq.configuration.main_url + OnboardingPaths::CONFIRM, body)
    #   response.parsed_response
    # end

    # def self.company_codes
    #   response = get(M2yAdiq.configuration.main_url + OnboardingPaths::COMPANY_CODES)
    #   response.parsed_response
    # end

    # def self.legal_nature_codes
    #   response = get(M2yAdiq.configuration.main_url + OnboardingPaths::LEGAL_NATURE_CODES)
    #   response.parsed_response
    # end

  end
end
