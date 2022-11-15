class CaregiversController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[new create]

  def index
    @caregivers = Caregiver.all
  end

  def new
    @caregiver = Caregiver.new
  end

  def create
    @caregiver = Caregiver.new(caregiver_params)
    #@caregiver.user = current_user
    if @caregiver.save
      redirect_to root_path, notice: 'Seja bem-vindo(a)!'
    else
      render :new
    end
  end

  private
  def caregiver_params
    params.require(:caregiver).permit(
    :email,
    :encrypted_password,
    :reset_password_sent_at,
    :remember_created_at,
    :created_at,
    :updated_at,
    :first_name,
    :last_name,
    :type,
    :address,
    :city,
    :latitude,
    :longitude,
    :password,
    :value,
    :care_type,
    :formation
    )
  end
end
