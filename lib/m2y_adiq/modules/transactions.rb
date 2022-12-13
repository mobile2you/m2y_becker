module M2yAdiq
  class Transactions < Base

    def self.list(from, seller, start = 0, length = 1000)
      body = {
        "start": start,
        "length": length,
        "date_init": from,
        "seller_id": seller
      }
      response = post(M2yAdiq.configuration.main_url + TransactionsPaths::LIST, body)
      response.parsed_response
    end

  end
end
