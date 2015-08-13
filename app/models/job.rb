# encoding: utf-8
class Job < ActiveRecord::Base
  
  # Associations
  
  belongs_to :user 
  belongs_to :employer
  belongs_to :sector
  
  # Validations

  validates :position, presence: true
  
  # Callbacks

  # Instance methods
end
