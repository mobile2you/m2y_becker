# frozen_string_literal: true

module M2yBecker

  module BillPaths
    GENERAL = '/api/v1/faturamentos/portador/'
    CURRENT = '/faturas/atual'
    CLOSE_BILL_PATH = '/faturas/fechada'
    DETAILS_BILL_PATH = '/faturas/detalhada'
    FUTURE_BILL_PATH = '/faturas/futuras'
    PERIOD_BILL_PATH = '/faturas/periodo'

    DIGITAL_BILL_PATH = '/fatura-digital'
    CANCEL_DIGITAL_BILL_PATH = '/fatura-digital/cancelamento'

    SMS_BILL_PATH = '/faturas/sms/adesao'
    CANCEL_SMS_BILL_PATH = '/faturas/sms/cancelamento'
    PARCELING_INFO_PATH = "/faturas/parcelamentos/pendentes"
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
