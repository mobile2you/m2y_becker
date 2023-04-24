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


  module CyclesPaths
    GENERAL = '/api/v1/faturamentos/ciclos/'
  end

  module GroupsPaths
    GENERAL = '/api/v1/faturamentos/ciclos/'
  end

  module UserPaths
    GENERAL = '/api/v1/portadores/'
    HISTORY_PATH = '/historico'
    INFO_PATH = "/informacoes"
    PHONES_PATH = "/telefones"
    CPF_PATH = "simplificado/cpf"
  end


  AUTH_PATH = '/oauth2/token'


end
