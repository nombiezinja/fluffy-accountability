FactoryBot.define do 
  factory :accountability_period do 
    pair 
    created_by {pair.personA}
    validated_by {pair.personB} 
    end_time {Time.now.utc}
  end 
end 
