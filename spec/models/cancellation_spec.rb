require 'rails_helper'

RSpec.describe Cancellation, type: :model do
  
  it "has a valid factory" do
    expect(build(:cancellation)).to be_valid
  end
  
  describe "associations" do 
    subject { FactoryBot.create(:cancellation) }
    it { should belong_to(:agreement)}
    it { should belong_to(:created_by)}
  end 
 end
