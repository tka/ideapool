class Users::SessionsController < Devise::SessionsController
  # before_filter :configure_sign_in_params, only: [:create]
  protect_from_forgery :only => :destory

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
    cookies[:user_email] = resource.email
    cookies[:user_avatar] = resource.avatar_url
  end

  # DELETE /resource/sign_out
  def destroy
     super
     cookies.delete :user_email
     cookies.delete :user_avatar
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
