class ContactMailer < ApplicationMailer
  default from: 'julian.arnold123@gmail.com'
  # after_action  :set_delivery_options,
  #               :prevent_delivery_to_guests,
  #               :set_business_headers

  def welcome_email(contact, email_body)
    @contact = contact
      email_with_name = %("#{@contact.name}" <#{@contact.email}>)
    @url = 'http://localhost:3000/contacts/new'
    mail(to: email_with_name,
         body: email_body,
         content_type: "text/html",
         subject: 'Welcome to World Machine Technology!')
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

  # def feedback_message(business, contact)
  #   @business = business
  #   @contact = contact
  #   mail
  # end
  #
  # def campaign_message(business, contact)
  #   @business = business
  #   @contact = contact
  # end
  #
  # private
  #
  # def set_delivery_options
  #   if @business && @business.has_smtp_settings?
  #     mail.delivery_method.settings.merge! (@business.smtp_settings)
  #   end
  # end
  #
  # def prevent_delivery_to_guests
  #   if @contact && @contact.guest?
  #     mail.perform_deliveries = false
  #   end
  # end
  #
  # def set_business_headers
  #   if @business
  #     headers["X-SMTPAPI-CATEGORY"] = @business.code
  #   end
  # end
end