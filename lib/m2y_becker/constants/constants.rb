module M2yBecker
  # envs
  HOMOLOGATION = "hml".freeze
  PRODUCTION = "prd".freeze

  # urls
  URL_HML = "https://cards-api-hml-v3.connect.dock.tech:8055/".freeze
  URL_PRD = "https://cards-api-v3.connect.dock.tech/".freeze

  # auth_url
  TOKEN_HML = "https://cards-api-hml-v3.connect.dock.tech:8055/".freeze
  TOKEN_PRD = "https://cards-api-v3.connect.dock.tech/".freeze

  API = "api/api/".freeze
  TOKEN_PATH = "autenticacao/tokens".freeze
  CARD_PATH = "api/api/v3/cartoes/".freeze
  GROUPS_PATH = "autenticacao/grupos".freeze

  USERS_PATH = "api/api/v3/portadores/".freeze
  HISTORY_PATH = "/historico".freeze
  CUSTOMER_ID_PATH = "/api/api/v3/portadores/consulta-cliente-id?id=".freeze

  CURRENT_BILL_PATH = "/fatura-atual".freeze
  CLOSE_BILL_PATH = "/fatura-fechada".freeze
  PERIOD_BILL_PATH = "/fatura-periodo?".freeze
  DETAIL_BILL_PATH = "/fatura-detalhada?".freeze
  PDF_BILL_PATH = "v3/fatura-pdf/consultar/".freeze
  FUTURE_BILL_PATH = "/lista-fatura-futura".freeze
  PARCELING_INFO_PATH = "/consulta-parcelamento-fatura-pendentes".freeze
  LEGAL_BLOCK = '/api/api/v3/bloqueio-cliente/listar-bloqueios'.freeze

  CYCLE_PATH = "/api/api/v3/ciclos".freeze

  QUERY_CPF_PATH = "api/api/v3/portadores/consulta-cliente-cpf?".freeze

  CHANGECYCLE_PATH = "/alterar-ciclo-vencimento?idciclovencimento=".freeze

  PASSWORD_PATH = "/cadastrar_senha".freeze

  BILLET_PATH = "/api/api/v3/boletos/"
end
