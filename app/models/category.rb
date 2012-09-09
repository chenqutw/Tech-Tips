class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :tips
  validates :name, presence: true, uniqueness: {message: 'has already been taken'}
end
