class EndPurchaseHistoriesController < ApplicationController

	def new
		@items = EndCartItem.where(end_user_id: current_end_user.id)

		@date = Tax.find(1).end
			if Date.today <= @date
		 	@tax = 1.08
		 	else Date.today >= @date
		 	@tax = 1.1
		 end

		@pay = EndPurchaseHistory.new

	end


	def create
		pay = EndPurchaseHistory.new
		pay.save
	end

	private
    def end_purchase_params
    	 params.require(:end_purchase_params).permit(:total_cost, :delivery_fee, :total_item_cost)
    end


end
