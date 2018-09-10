FactoryBot.define do 
  factory :fulfillment_report do 
    agreement 
    created_by {agreement.pair.personA}
    personA {true}
    personB {true}
  end 
end 
