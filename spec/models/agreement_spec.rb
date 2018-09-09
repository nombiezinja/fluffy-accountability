require 'rails_helper'

RSpec.describe Agreement, type: :model do
  
  it "has a valid factory" do
    expect(build(:agreement)).to be_valid
  end
  
  describe "associations" do 
    subject { FactoryBot.create(:agreement) }
    it { should belong_to(:created_by)}
    it { should belong_to(:validated_by)}
    it {should belong_to (:pair)}
  end 
end
