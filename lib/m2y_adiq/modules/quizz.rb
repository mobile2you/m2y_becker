module M2yAdiq
  class Quizz < Base

    def self.create_quiz(cpf)
      body = {
        cognito_sub: M2yAdiq.configuration.user_id,
        cpf: cpf
      }

      post(M2yAdiq.configuration.quizz_url + CREATE_QUIZZ , body)
    end

    def self.answer_quiz(quiz_key)
      body = {
        cognito_sub: M2yAdiq.configuration.user_id,
        quiz_key: quiz_key,
        answers: answers
      }

      post(M2yAdiq.configuration.quizz_url + SEND_QUIZZ , body)
    end

  end
end
