class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :content, length: { maximum: 140 }, presence: true
  attr_accessible :content, :user_id
end
