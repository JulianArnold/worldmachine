class WelcomeController < ApplicationController
  def index
    @contact = Contact.new(session[:contact])
    session.delete(:contact)
  end
end
