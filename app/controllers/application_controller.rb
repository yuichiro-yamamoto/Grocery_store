class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_up_path_for(resourece)
	  end_user_path(resourece)
    end

    def after_sign_out_path_for(resourece)
      case resourece
        when :end_user
          new_end_user_session_path
        when :admin_user
          new_admin_user_session_path
      end
    end

    def after_sign_in_path_for(resourece)
     case resourece
      when EndUser
	   end_user_path(resourece)
      when AdminUser
       admin_users_show_path(resourece)
     end
    end

  protected
    def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :postal_code, :address,  :telephone_number, :email])
    end
end
