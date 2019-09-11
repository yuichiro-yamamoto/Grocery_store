class EndUsersController < ApplicationController
    
    def show
    	@user = current_end_user
    end

    def edit
    	@user = current_end_user
    end

    def update
    	@user = current_end_user
    	@user.update(end_user_params)
    	redirect_to end_user_path(current_end_user.id)
    end

    def unsubscribe
    end

    def destroy
    end

    def index
    end


    private

    def end_user_params
    	params.require(:end_user).permit(:name, :name_kana, :postal_code, :address, :telephone_number, :email)
    end

end
