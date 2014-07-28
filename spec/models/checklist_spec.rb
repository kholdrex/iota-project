require 'rails_helper'

RSpec.describe Checklist, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:checklist)).to be_valid
  end

  it { is_expected.to belong_to(:task) }
end
