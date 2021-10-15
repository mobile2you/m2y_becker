module M2yBecker

    class CdtQueryCpf < CdtModule
  
      def findCpf(cpf_user)
        response = @request.get(@url +  QUERY_CPF_PATH + "cpf=#{cpf_user.to_s})"
        CdtModel.new(response)
      end

    end
  end
end 
