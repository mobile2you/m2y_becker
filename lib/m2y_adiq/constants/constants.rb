# frozen_string_literal: true

module M2yAdiq
  
  module OnboardingPaths
    REGISTER = '/v4/interface/onboarding'
    LIST = '/v4/interface/onboarding/list'
    CONFIRM = '/v4/interface/onboarding/confirm'
    COMPANY_CODES = "/v1/interface/domain-tables/company_formation_list"
    LEGAL_NATURE_CODES = "/v1/interface/domain-tables/legal_nature_list"
  end

  module TaxPaths
    CNAE_FEE = '/v4/interface/onboarding/cnae_fees_list'
    CNAE_LIST = '/v1/interface/domain-tables/cnae_list'
    PAYMENT_PLAN = '/v1/interface/domain-tables/paymentplan'
    COMBO = '/v1/interface/domain-tables/combo'
    PRODUCTS = '/v1/interface/domain-tables/brand_product_list'
  end


  AUTH_PATH = '/v1/interface/auth/oauth2'


end