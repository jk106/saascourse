class User < ActiveRecord::Base
  has_many :microposts
  validates :email, presence: true
  validates :name, presence: true
  attr_accessible :email, :name
end
