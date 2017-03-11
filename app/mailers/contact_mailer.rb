class ContactMailer < ApplicationMailer
  layout 'mailer'

  def welcome_email(contact)
    @contact = contact
      email_with_name = %("#{@contact.name}" <#{@contact.email}>)
    mail(to: email_with_name,
         # body: email_body,
         # content_type: "text/html",
         subject: 'Welcome to World Machine Technology!')
  end

  def new_contact_alert(contact)
    @contact = contact
    mail(to: 'julian.arnold123@gmail.com',
         subject: 'New contact received from worldmachine.ie')
  end

  def receive(email)
    page = Page.find_by(address: email.to.first)
    page.emails.create(
        subject: email.subject,
        body: email.body
    )

    if email.has_attachments?
        email.attachments.each do |attachment|
        page.attachments.create({
                                    file: attachment,
                                    description: email.subject
                                })
      end
    end
  end
end