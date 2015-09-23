class UserMailer < ApplicationMailer

  default from: 'myaustralianbook@gmail.com'

  def recommendation_request(recommendation)
    @recommendation = recommendation
    @job = recommendation.job
    mail(to: recommendation.recipient_email, subject: 'Recommendation Request')
  end
    
  # def recommendation
    # new_job_recommendation_path(@job, token: @job.authentication_token)
    # subject = "Recommend your employee"
    # body = mandrill_template("Recommendation")
  # end
    
end