# frozen_string_literal: true
require "net/http"
require "uri"

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    formatted_dob = sign_up_params["dob"].gsub("-","")
    pwz_number = sign_up_params["pwz_number"]

    uri = URI.parse("http://hdt.hipokrates.org/?pwz=#{pwz_number}&data_ur=#{formatted_dob}&format=json")
    response = Net::HTTP.get_response(uri)
    json_response = JSON.parse(response.body)

    pwz_verified = (json_response["wynik"] == "1")
    unless pwz_verified
      redirect_to new_registration_path(User, valid: false, user_type: sign_up_params["user_type"]) and return
    end

    super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  def sign_up_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :pesel, :address, :phone, :pwz_number, :dob, :age, :weight, :height, :sex, :user_type)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
