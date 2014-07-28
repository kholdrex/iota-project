require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:task) }
end
