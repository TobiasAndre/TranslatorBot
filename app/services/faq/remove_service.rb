module FaqModule
  class RemoveService
    def initialize(params)
      @params = params
      @id = params['id']
    end

    def call
      faq = Faq.where(id: @id).last
      return 'Questão inválida, verifique o Id' if faq == nil

      Faq.transaction do
        # Remove the tags associated with dont be associated from another faqs
        faq.hashtags.each do |h|
          if h.faqs.count <= 1
            h.delete
          end
        end
        faq.delete
        'Deletado com sucesso'
      end
    end
  end
end
