FactoryBot.define do 
  factory :agreement do 
    pair 
    created_by
    validated_by
    description {'a description' }
  end 
end 
