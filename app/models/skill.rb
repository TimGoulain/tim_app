# encoding: utf-8
class Skill < ActiveRecord::Base
  
  # Associations
  has_and_belongs_to_many :users
  
  # Validations
  
  # Callbacks

  # Instance methods
end