# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  protected

  def configure_permitted_parameters
    additional_fields = %i[first_name last_name].freeze
    devise_parameter_sanitizer.permit(:sign_up, keys: additional_fields)
    devise_parameter_sanitizer.permit(:account_update, keys: additional_fields)

    return unless user_signed_in? && current_user.admin?

    devise_parameter_sanitizer.for(:account_update, keys: [:admin])
  end

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
