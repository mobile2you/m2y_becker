module M2yAdiq
  class Otp < Base

    def self.send_email(email, message)
      body = {
        user_id: M2yAdiq.configuration.user_id,
        service:
        {
          service_id: OtpTypes::EMAIL,
          inputs: {
            email: email,
            message: message,
            token_code_length: 6,
            email_layout: M2yAdiq.configuration.email_template,
          }
        }
      }
      post(M2yAdiq.configuration.orchestrator_url + OTP , body)["data"]["id"]
    end

    def self.send_sms(phone, message)
      body = {
        user_id: M2yAdiq.configuration.user_id,
        service:
        {
          service_id: OtpTypes::SMS,
          inputs: {
            phone: phone,
            message: message,
            token_code_length: 6
          }
        }

      }
      post(M2yAdiq.configuration.orchestrator_url + OTP , body)["data"]["id"]
    end


    def self.verify_sms(id, code)
      verify(OtpTypes::VERIFY_SMS, id, code)
    end

    def self.verify_email(id, code)
      # verify(OtpTypes::VERIFY_EMAIL, id, code) eh assim mesmo...
      verify(OtpTypes::VERIFY_SMS, id, code)
    end


    private
    def self.verify(type, id, code)
      body = {
        user_id: M2yAdiq.configuration.user_id,
        service:
        {
          service_id: type,
          inputs: {
            id: id,
            token_code: code,
          }
        }
      }
      post(M2yAdiq.configuration.orchestrator_url + OTP , body)
    end


  end
end
