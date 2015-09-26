# encoding: utf-8
class Recommendation < ActiveRecord::Base
  
  # Associations
  
  after_create :set_token
  belongs_to :job
  has_one :rating
  accepts_nested_attributes_for :rating
    
  # Validations

  # Callbacks

  # Instance methods
  
  delegate :score, to: :rating, prefix: false, allow_nil: true
  
  def average_rating
    ratings.sum(:score) / ratings.size
  end
  
  private
  
  def set_token
    self.authentication_token = SecureRandom.hex
    self.save
  end
  
end
