FactoryBot.define do 
  factory :user, aliases: [:personA, :personB, :created_by, :validated_by] do
    after(:build)   { |u| u.skip_confirmation_notification! }
    after(:create)  { |u| u.confirm }
    sequence :email do |n|
      "person#{n}@example.com"
    end
    name { Faker::Internet.name }
    password {'SecurePassw0rd!'}
    password_confirmation {'SecurePassw0rd!'}
  end
end 
