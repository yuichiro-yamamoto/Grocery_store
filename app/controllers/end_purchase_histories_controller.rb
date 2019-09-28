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
		@pay.delivery_fee = "1000"

	end

	def create

		@date = Tax.find(1).end
			if Date.today <= @date
		 	@tax = 1.08
		 	else Date.today >= @date
		 	@tax = 1.1
		 end

		pay = EndPurchaseHistory.new(end_purchase_history_params)
		pay.end_user_id = current_end_user.id
		pay.delivery_fee = "1000"
		pay.total_item_cost = (pay.item_total_price(current_end_user)*@tax).to_i
		pay.total_cost = (pay.item_total_price(current_end_user)*@tax).to_i + pay.delivery_fee
		pay.save

# ==============================購入履歴詳細側===============================

		  carts = EndCartItem.where(end_user_id: current_end_user.id)
		   carts.each do |c|					           #<------ カートに商品を入れるたびに、カートに紐づいている商品テーブルのカラムを詳細テーブルのカラムに入れる処理を繰り返す。
		   	detail = EndPurchaseDetail.new
		    detail.end_purchase_history_id = pay.id
	         detail.item_image_history_id = c.item.item_image_id
	          detail.item_name_history = c.item.item_name
	          detail.item_price_history = c.item.price
	          detail.purchase_number_history = c.purchase_number
         	

	          userinfo = EndUser.find(current_end_user.id)
	          detail.postal_code_history = userinfo.postal_code
	          detail.address_history = userinfo.address
	          detail.destination_name_history = userinfo.name
	          detail.telephone_number_history = userinfo.telephone_number
	          detail.delivery_status = 0
	          detail.save
	          c.destroy    #<--------- 購入確定したカート内商品を、カートから消す処理。
	      		end

			redirect_to end_purchase_histories_path
	end

	def index
		@items = EndPurchaseHistory.where(end_user_id: current_end_user.id)
	end

	def show
		@log = EndPurchaseHistory.find(params[:id])
		@details = @log.end_purchase_details        #<------@logに結び付いている詳細テーブル
	end

	private
    def end_purchase_history_params
    	 params.require(:end_purchase_history).permit(:end_user, :total_cost, :delivery_fee, :total_item_cost, :payment)
    end

end
