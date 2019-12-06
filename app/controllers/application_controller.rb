class ApplicationController < ActionController::Base
  include Pundit

  attr_reader :current_user

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  #rescue_from Pundit::NotAuthorizedError, ActionController::UnpermittedParameters, with: :user_not_authorized

  def current_user
    guest_user
  end

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  def admin_user
    User.where(role: :admin).first
  end

  def guest_user
    User.where(role: :guest).first
  end
end
