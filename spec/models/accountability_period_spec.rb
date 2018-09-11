require 'rails_helper'

RSpec.describe AccountabilityPeriod, type: :model do
  
  it "has a valid factory" do
    expect(build(:accountability_period)).to be_valid
  end
  
  describe "associations" do 
    subject { FactoryBot.create(:accountability_period) }
    it { should belong_to(:pair)}
    it { should belong_to(:created_by)}
    it { should belong_to(:validated_by)}
  end 
 end
