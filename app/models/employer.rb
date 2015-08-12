# encoding: utf-8
class Employer < ActiveRecord::Base
  
  # Associations
  has_many :jobs
  
  # Validations
  validates :name, presence: true
  
  # Callbacks

  # Instance methods
end
