# encoding: utf-8
class Recommendation < ActiveRecord::Base
  
  # Associations
  
  after_create :set_token
  belongs_to :job
    
  # Validations

  # Callbacks

  # Instance methods
  
  private
  
  def set_token
    self.authentication_token = SecureRandom.hex
    self.save
  end
  
end
