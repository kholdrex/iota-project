require 'rails_helper'

RSpec.describe Task, :type => :model do
  
  it "has a valid factory" do
  	expect(FactoryGirl.build(:task)).to be_valid
  end

  it { is_expected.to have_and_belong_to_many(:labels) }
  # it { is_expected.to have_many(:attachments) }
  # it { is_expected.to have_many(:checklists) }
  # it { is_expected.to have_many(:comments) }
  
end
