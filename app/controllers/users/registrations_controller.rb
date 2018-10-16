class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def new
    @affiliation = params[:affiliation]
    Rails.cache.write("affiliation", @affiliation)
    super    
  end

  def create
    build_resource(registration_params)    
    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, location: root_path
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        respond_with resource, location: after_sign_up_path_for(resource)
      end
    else
      clean_up_passwords
      respond_with resource
    end
  end  

  private

  def registration_params
    params.require(:user).permit(:email, :password, :password_confirmation, :affiliation)
  end

  protected
 
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:affiliation])
  end
  
end