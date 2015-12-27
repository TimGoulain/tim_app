# encoding: utf-8
class Sector < ActiveRecord::Base
  
  # Associations
  has_many :jobs
  has_many :offers
  
    # Validations
  
  # Callbacks

  # Instance methods
  def to_s
    code  
  end
end
