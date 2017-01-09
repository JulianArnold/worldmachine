class ContactMailer < ApplicationMailer
  default from: 'julian.arnold123@gmail.com'

  def welcome_email(contact)
    @contact = contact
      email_with_name = %("#{@contact.name}" <#{@contact.email}>)
    @url = 'http://localhost:3000/contacts/new'
    mail(to: email_with_name, subject: 'Welcome to World Machine Technology!')

  end
end