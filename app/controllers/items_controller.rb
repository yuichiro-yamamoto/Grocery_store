class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def create
		item = Item.new(item_params)
		 if item.save
		    redirect_to admin_items_path    #<===商品追加できたら商品一覧へ
		 else
			flash[:notice] = "商品追加できませんでした。"
			redirect_to new_item_path                #<===追加できなければ商品追加画面へ
		 end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		item = Item.find(params[:id])
		 if item.update(item_params)
		    redirect_to admin_items_path         #<===商品編集できなければ商品一覧画面へ
		 else
			flash[:notice] = "更新できませんでした"
			redirect_to edit_item_path(item.id)   #<===商品情報編集できなければ商品編集画面へ
		 end

	end

	def destroy
		item = Item.find(params[:id])
		if item.destroy
		   redirect_to admin_items_path   #<===商品削除できたら商品一覧画面へ
		else
			puts item.errors.full_messages
			flash[:notice] = "削除できませんでした"
			redirect_to item_path              #<===商品削除できなければ商品詳細画面へ
		end
    end

	private

    def item_params
        params.require(:item).permit(:item_name, :price, :item_explain, :stock, :item_image, :sales_status, :weight)
    end

end
