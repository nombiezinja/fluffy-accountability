require 'rails_helper'

RSpec.describe FulfillmentReport, type: :model do
  
  it "has a valid factory" do
    expect(build(:fulfillment_report)).to be_valid
  end
  
  describe "associations" do 
    subject { FactoryBot.create(:fulfillment_report) }
    it { should belong_to(:agreement)}
    it { should belong_to(:created_by)}
  end 
 end
