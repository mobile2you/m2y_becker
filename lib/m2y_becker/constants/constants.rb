# frozen_string_literal: true
# https://documentacao.rpe.tech/docs/horizon/efdc4a98a5a87-gerar-senha-e-enviar-por-sms

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


  module BilletPaths
    GENERAL = '/api/v1/faturamentos/faturas/'
    BANK_GENERAL = '/api/v1/servicos-bancarios/fatura/'
    BILLETS = '/boletos'
    PDF = '/pdf'
  end


  module CyclesPaths
    GENERAL = '/api/v1/faturamentos/ciclos/'
  end

  module GroupsPaths
    GENERAL = '/api/v1/faturamentos/ciclos/'
  end

  module CardsPaths
    GENERAL = '/api/v1/cartoes/'
    VIRTUALS = '/api/v1/cartoes/virtuais/'
    ORIGINAL_PATH = "titular"
    PASSWORD_PATH = "/senha"
    CVV_PATH = "/cvv"
    DEACTIVATE_CVV = "/cvv/inativacao"
    ACTIVATE_CVV = "/cvv/ativacao"
    AUTH_PASSWORD_PATH = "/senha/autenticacao"
    SMS_PASSWORD_PATH = "/senhas/sms"
    BLOCK_PATH = "/bloqueio/temporario"
    UNLOCK_PATH = "/desbloqueio"
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
