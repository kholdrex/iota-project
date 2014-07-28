class Task < ActiveRecord::Base
  has_and_belongs_to_many :labels
  belongs_to :category
  has_many :attachments
  has_many :checklists
  has_many :comments
end
