# require "mandrill"

# class BaseMandrillMailer < ActionMailer::Base
  # default(
    # from: "hello@example.com",
    # reply_to: "hello@example.com"
  # )

  # private

  # def send_mail(email, subject, body)
    # mail(to: email, subject: subject, body: body, content_type: "text/html")
  # end

  # def mandrill_template(App_template, attributes)
    # mandrill = Mandrill::API.new(ENV["SMTP_PASSWORD"])

    # merge_vars = attributes.map do |key, value|
      # { name: key, content: value }
    # end

    # mandrill.templates.render(App_template, [], merge_vars)["html"]
  # end
# end