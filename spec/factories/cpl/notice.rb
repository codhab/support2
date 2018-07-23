FactoryGirl.define do

  factory :new_notice, class: 'Support::Cpl::Notice' do
    factory :notice do
      name { Faker::Job.field }
      document_number { Faker::Number.number(10) }
      proposal_date { Faker::Date.between(2.days.ago, Date.today) }
      open_date { Faker::Date.between(2.days.ago, Date.today) }
    end
  end

  factory :edited_notice, class: 'Support::Cpl::Notice' do
    name    { Faker::Job.field }
    initialize_with { Support::Cpl::Notice.find_or_create_by(id: 1) }
  end
end
