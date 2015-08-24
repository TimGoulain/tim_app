class OffersController < ApplicationController

  before_action :try_find_employer_from_email, only: :create
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new
    @offer.employer = Employer.new
    @offer.employer.contacts.build
  end

  def edit
  end

  def create
    if user_signed_in?
      @offer.created_by = current_user
    elsif @contact
      @offer.created_by = @contact
    else
      @offer.created_by = @offer.employer.contacts.first  
    end
    
    if @offer.save
      redirect_to offers_path, notice: 'Your offer was successfully added to the list!'
    else
      render :new
    end
  end

  def update
    if @offer.update(offer_params)
      redirect_to offers_path, notice: 'Your offer was successfully updated.'
    else
      render :edit
    end
  end
    
  def destroy
    @offer.destroy
    redirect_to offers_path, notice: 'Your offer was successfully deleted to the list!'
  end

  private

  def try_find_employer_from_email
    if contact_attributes?
      email = contact_params[:email]
      @contact = User.find_by_email(email)
      if @contact
        params[:offer].delete(:employer_attributes)
        params[:offer][:employer_id] = @contact.employer_id        
      end
    end
  end

  def offer_params
    set_contact_password if contact_attributes? && contact_params[:id].nil?
    
    params.require(:offer).permit(
      :position, :description, :employer_id, :sector_id, :started_at, :ended_at, :created_by_id,
      sector_attributes: [:id, :code, :image],
      employer_attributes: [
        :id, :name, :location,
        contacts_attributes:[:id, :email, :phone, :employer_id, :password]
      ]
    )
  end
  
  def contact_attributes? 
    employer_params && employer_params[:contacts_attributes]
  end 
    
  def sector_params
    params[:offer][:sector_attributes]
  end
    
  def employer_params
    params[:offer][:employer_attributes]
  end
    
  def contact_params 
    employer_params[:contacts_attributes]["0"]
  end
  
  def set_contact_password
    contact_params[:password] = Devise.friendly_token.first(8)
  end

end
