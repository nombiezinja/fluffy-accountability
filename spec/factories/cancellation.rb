FactoryBot.define do 
  factory :cancellation do 
    agreement 
    created_by {agreement.pair.personA}
  end 
end 
