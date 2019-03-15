require_dependency 'support/application_record'

module Support
  module Social
    class Question  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_questions'

      enum question_type_id: ['situacao_habitacional', 'infra-residencial']

      has_many :question_multiples
    end
  end
end
