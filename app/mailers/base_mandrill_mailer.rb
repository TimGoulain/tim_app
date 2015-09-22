# require "mandrill"

# class BaseMandrillMailer < ActionMailer::Base
  # default from: "myaustralianbook@gmail.com"

  # private

  # def mandrill_template(App_template, attributes)
    # mandrill = Mandrill::API.new(ENV["SMTP_PASSWORD"])

    # mandrill.templates.render(App_template, [], merge_vars)["html"]
  # end
# end