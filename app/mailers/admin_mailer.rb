class AdminMailer < ActionMailer::Base
  default to:   Proc.new { Admin.pluck(:email) }, from: 'julian.arnold@worldmachine.ie'
  # Uncomment these two lines below when testing out the mailer..
  # default cc:   Proc.new { Admin.pluck(:email) }, from: 'julian.arnold123@gmail.com'
  # default bcc:  Proc.new { Admin.pluck(:email) }, from: 'julian.arnold123@gmail.com'

  def new_registration(contact)
    @contact = contact
    mail(subject: "New Contact Signup: #{@contact.email}")
  end
end