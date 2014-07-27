require 'rails_helper'

RSpec.describe User, :type => :model do
  
  describe User do
  	it "has a valid factory" do
  	  expect(FactoryGirl.build(:user)).to be_valid
  	end

  	#it { is_expected belong_to (:board).class_name(Board) }
  end

end