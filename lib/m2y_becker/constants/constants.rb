# frozen_string_literal: true

module M2yBecker
  
  module BillPaths
    GENERAL = '/api/v1/faturamentos/portador'
    CURRENT = '/faturas/atual'

    
    STORE_LIST = '/v1/interface/seller/list'
    CONFIRM = '/v3/interface/onboarding/confirm'
    COMPANY_CODES = "/v1/interface/domain-tables/company_formation_list"
    LEGAL_NATURE_CODES = "/v1/interface/domain-tables/legal_nature_list"
  end

  module TaxPaths
    CNAE_FEE = '/v4/interface/onboarding/cnae_fees_list'
    CNAE_LIST = '/v1/interface/domain-tables/cnae_list'
    PAYMENT_PLAN = '/v1/interface/domain-tables/paymentplan'
    COMBO = '/v1/interface/domain-tables/combo'
    PRODUCTS = '/v1/interface/domain-tables/brand_product_list'
    BRANDS = '/v1/interface/domain-tables/brand_list'
    SALES_PLANS = "/v1/interface/seller/mdr"
  end

  module TransactionsPaths
    LIST = '/v1/interface/payments/list'
    SCHEDULE_LIST = "/v1/interface/schedule-receivables/analytic_statement"
  end


  AUTH_PATH = '/oauth2/token'


end