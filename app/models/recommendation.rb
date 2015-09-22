# encoding: utf-8
class Recommendation < ActiveRecord::Base
  
  # Associations
  
  after_create :set_token
  belongs_to :job
  
  # Validations

  # Callbacks

  # Instance methods
  def set_token
    @recommendation.authentication_token = SecureRandom.hex
    @recommendation.save
    email = params[:recipient_email]
    UserMailer.recommendation_request(@recommendation, email).deliver_now
  end
  
end
