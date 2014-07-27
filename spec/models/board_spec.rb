require 'rails_helper'

RSpec.describe Board, :type => :model do
  
  describe Board do
  	it "has a valid factory" do
  	  expect(FactoryGirl.build(:board)).to be_valid
  	end

  	#it { is_expected belong_to (:user).class_name(User) }
  end
  
end