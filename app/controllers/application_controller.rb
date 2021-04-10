class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :last_name, :last_name_kana, :first_name, :first_name_kana, :company_name, :company_name_kana, :prefecture_id, :profile])
  end
end
