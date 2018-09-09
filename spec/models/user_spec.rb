require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end
  
  describe "associations" do 
    subject { FactoryBot.create(:user) }
    
    it { should have_many(:pairs)}
    it { should have_many(:agreements)}
  end 
end
