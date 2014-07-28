require 'rails_helper'

RSpec.describe Attachment, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:attachment)).to be_valid
  end

  it { is_expected.to belong_to(:task) }
end
