# encoding: UTF-8
class RegistrationsController < Devise::RegistrationsController

  private

  def user_params
    params.require(:user).permit(:email, :password, :salt, :encrypted_password)
  end
end
