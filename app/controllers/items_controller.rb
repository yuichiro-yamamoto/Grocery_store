class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def create
		item = Item.new(item_params)
		if item.save
			redirect_to admin_items_path
		else
			puts item.errors.full_messages
		end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		item = Item.find(params[:id])
		if item.update(item_params)
		   redirect_to admin_items_path
		else
			flash[:notice] = "更新できませんでした"
			redirect_to edit_item_path(item.id)
		end

	end

	def destroy
		item = Item.find(params[:id])
		if item.destroy
		   redirect_to admin_items_path
		else 
			puts item.errors.full_messages
			flash[:notice] = "削除できませんでした"
			redirect_to item_path(item.id)
		end
    end

	private

    def item_params
        params.require(:item).permit(:item_name, :price, :item_explain, :stock, :item_image, :sales_status, :weight)
    end

end
