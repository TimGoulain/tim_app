# encoding: utf-8
class Recommendation < ActiveMailer::Base
  
  # Associations
  
  # Validations

  # Callbacks

  # Instance methods
  def recommendation_request(email)
    @email = email
    mail(from: email, subject: 'Recommendation Request')
  end
  
end
