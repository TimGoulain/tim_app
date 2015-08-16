# encoding: utf-8
class Employer < ActiveRecord::Base
  
  # Associations
  has_many :contacts, class_name: 'User'
  accepts_nested_attributes_for :contacts
  has_many :jobs
  has_many :offers
  
  # Validations
  validates :name, presence: true
  
  # Callbacks

  # Instance methods
  def to_s 
    name
  end 

end
