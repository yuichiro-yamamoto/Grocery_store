class ApplicationController < ActionController::Base
	
before_action :configure_permitted_parameters, if: :devise_controller?
	def after_sign_up_path_for(resourece)
	 end_user_path(resourece)
    end

    def after_sign_in_path_for(resourece)
	 end_user_path(resourece)
    end
    
    
  protected
    def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :postal_code, :address,  :telephone_number])
    end
end
