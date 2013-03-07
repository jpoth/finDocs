class UserLogin < ActiveRecord::Base
  attr_accessible :Email, :dateCreated, :name, :password, :documentsIds
  has_and_belongs_to_many :document
end
