require 'rails_helper'

RSpec.describe Agreement, type: :model do
  
  it "has a valid factory" do
    expect(build(:agreement)).to be_valid
  end
  
 end
