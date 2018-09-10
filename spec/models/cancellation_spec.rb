require 'rails_helper'

RSpec.describe Cancellation, type: :model do
  
  it "has a valid factory" do
    expect(build(:cancellation)).to be_valid
  end
  
 end
