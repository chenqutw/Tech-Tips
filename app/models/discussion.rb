class Discussion < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :tip
end
