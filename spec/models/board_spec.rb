require 'rails_helper'

RSpec.describe Board, :type => :model do

  it "has a valid factory" do
    expect(FactoryGirl.build(:board)).to be_valid
  end

  it { is_expected.to have_and_belong_to_many(:users) }
  it { is_expected.to have_many(:categories) }
  it { is_expected.to have_many(:labels) }
  
end