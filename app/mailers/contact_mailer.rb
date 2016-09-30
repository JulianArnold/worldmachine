class ContactMailer < ApplicationMailer
  default from: 'julian.arnold123@gmail.com'

  def welcome_email(contact)
    @contact = contact
    @url = 'http://localhost:3000/contacts/new'
    mail(to: @contact.email, subject: 'Welcome to World Machine Technology!')
  end
end