class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def create
		item = Item.new(item_params)
		item.save!
		redirect_to admin_items_path
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		item = Item.find(params[:id])
		item.update(item_params)
		redirect_to admin_items_path
	end

	def destroy
		item = Item.find(params[:id])
		item.destroy!
		redirect_to admin_items_path
    end

	private

    def item_params
        params.require(:item).permit(:item_name, :price, :item_explain, :stock, :item_image, :sales_status, :weight)
    end

end
