class AdminPurchaseHistoriesController < ApplicationController

	def index
		@items = EndPurchaseHistory.all
	end
	
	def show
		@history = EndPurchaseHistory.find(params[:id])
		@details = @history.end_purchase_details

		# @details = EndPurchaseDetails.where(end_purchase_history_id: EndPurchaseHistory.find(params[:id]))
	end

	def update
		detail = EndPurchaseDetail.find(params[:id])
		detail.update(end_purchase_detail_params)
		redirect_to admin_purchase_history_path
	end

	private

	 def end_purchase_detail_params
	 	 params.require(:end_purchase_detail).permit(:delivery_status)
	 end
end
