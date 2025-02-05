class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  def after_sign_out_path_for(resource_or_scope)
    unauthenticated_root_path # Redireciona para login após logout
  end

  def after_sign_in_path_for(resource)
    authenticated_root_path # Redireciona para a home após login
  end
end
