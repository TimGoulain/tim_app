# encoding: utf-8
class Travel < ActiveRecord::Base
  
  # Associations
 
  belongs_to :user 
  has_many :opinions
  
  # Validations

  # Callbacks

  # Instance methods
end
