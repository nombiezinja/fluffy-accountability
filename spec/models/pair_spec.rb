require 'rails_helper'

RSpec.describe Pair, type: :model do
  
  it "has a valid factory" do
    expect(build(:pair)).to be_valid
  end
  
  describe "associations" do 
    subject { FactoryBot.create(:pair) }
    it { should belong_to(:personA)}
    it { should belong_to(:personB)}
    it {should have_many (:agreements)}
  end 
end
