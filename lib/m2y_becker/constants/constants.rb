module M2yBecker
  
  #envs
  HOMOLOGATION = "hml"
  PRODUCTION = "prd"

  #urls
  URL_HML = "https://cards-api-hml-v3.marketpay.com.br:8055/"
  URL_PRD = "https://cards-api-v3.marketpay.com.br:8055/"

  #auth_url
  TOKEN_HML = "https://cards-api-hml-v3.marketpay.com.br:8055/"
  TOKEN_PRD = "https://cards-api-v3.marketpay.com.br:8055/"


  API = "api/"
  TOKEN_PATH = "autenticacao/tokens"
  CARD_PATH = "api/api/v3/cartoes/"
  GROUPS_PATH = "autenticacao/grupos"

  USERS_PATH = "api/api/v3/portadores/"
  HISTORY_PATH = "/historico"
  CUSTOMER_ID_PATH = "/api/api/v3/portadores/consulta-cliente-id?id="

  CURRENT_BILL_PATH = "/fatura-atual" 
  CLOSE_BILL_PATH = "/fatura-fechada"
  PERIOD_BILL_PATH = "/fatura-periodo?"
  DETAIL_BILL_PATH = "/fatura-detalhada?"

  CYCLE_PATH = "/api/api/v3/ciclos"

  QUERY_CPF_PATH = "api/api/v3/portadores/consulta-cliente-cpf?"

  CHANGECYCLE_PATH = "/alterar-ciclo-vencimento"

  PASSWORD_PATH = "/cadastrar_senha"
  


end
