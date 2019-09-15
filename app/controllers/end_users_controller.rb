class EndUsersController < ApplicationController
    
    def show
    	@user = current_end_user
    end

    def edit
    	@user = EndUser.find(params[:id])
    end

    def update
    	@user = EndUser.find(params[:id])
    	@user.update(end_user_params)
    	redirect_to end_user_path(current_end_user.id)
    end

    def unsubscribe
        @user = current_end_user
    end

    def destroy
        user = current_end_user
        user.destroy
        redirect_to top_path
    end

    def index
    end


    private

    def end_user_params
    	params.require(:end_user).permit(:name, :name_kana, :postal_code, :address, :telephone_number)
    end

end
