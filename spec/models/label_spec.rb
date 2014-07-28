require 'rails_helper'

RSpec.describe Label, :type => :model do
  
  it "has a valid factory" do
    expect(FactoryGirl.build(:label)).to be_valid
  end

  it { is_expected.to belong_to(:board) }
  it { is_expected.to have_and_belong_to_many(:tasks) }

end
