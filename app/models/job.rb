# encoding: utf-8
class Job < ActiveRecord::Base
  
  # Associations
  
  belongs_to :user 
  belongs_to :employer
  accepts_nested_attributes_for :employer
  belongs_to :sector
  
  # Validations
  
  # Callbacks

  # Instance methods
end
