  class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_contact

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.welcome_email(@contact).deliver_now
        ContactMailer.new_contact_alert(@contact).deliver_now
        flash[:success] = 'Thank you.  We will be in touch.'
        format.html { redirect_to root_url(anchor: 'my-contact-form') }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        flash[:error] = "Sorry, #{@contact.errors.full_messages.to_sentence}."
        session[:contact] = @contact.attributes
        format.html { redirect_to root_url(anchor: 'my-contact-form') }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :subject, :message)
    end

    def invalid_contact
      logger.error "Attempt to access invalid contact #{params[:id]}"
      redirect_to contacts_url, notice:  'Invalid contact.  Please contact World Machine on "julian.arnold@worldmachine.ie" thanks.'
    end
end
