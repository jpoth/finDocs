class Document < ActiveRecord::Base
  
  attr_accessible :AmtInvested, :endDate, :name, :startDate, :userIds
  has_and_belongs_to_many :user_login	
end
