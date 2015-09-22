# encoding: utf-8
class Job < ActiveRecord::Base
  
  # Associations
  
  belongs_to :user 
  belongs_to :employer
  belongs_to :sector
  has_many :recommendations
  accepts_nested_attributes_for :employer

  # Validations
  
  # Callbacks

  # Instance methods
  delegate:city, to: :employer, prefix: false, allow_nil: true
  delegate:name, to: :employer, prefix: false, allow_nil: true
  delegate:location, to: :employer, prefix: false, allow_nil: true
  delegate:code, to: :sector, prefix: false, allow_nil: true
end
