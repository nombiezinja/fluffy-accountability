FactoryBot.define do 
  factory :agreement do 
    pair 
    created_by {pair.personA}
    validated_by {pair.personB}    
    description {'a description' }
  end 
end 
