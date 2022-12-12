module M2yAdiq
  class Taxes < Base

    def self.cnae_fees
      response = post(M2yAdiq.configuration.main_url + TaxPaths::CNAE_FEE, {})
      response.parsed_response
    end

    def self.combo_fees
      response = get(M2yAdiq.configuration.main_url + TaxPaths::COMBO)
      response.parsed_response
    end

    def self.payment_plans
      response = get(M2yAdiq.configuration.main_url + TaxPaths::PAYMENT_PLAN)
      response.parsed_response
    end

    def self.cnae_list
      response = get(M2yAdiq.configuration.main_url + TaxPaths::CNAE_LIST)
      response.parsed_response
    end

    def self.product_list
      response = get(M2yAdiq.configuration.main_url + TaxPaths::PRODUCTS)
      response.parsed_response
    end

  end
end
