class AdminItemsController < ApplicationController

	def index
		@items = Item.all
    end

    def show
    	 @item = Item.find(params[:id])
         @date = Tax.find(1).end

    	 if Date.today <= @date
    	 	@tax = 1.08
    	 	@price =  @item.price*@tax
    	 else
    	 	@tax = 1.1
    	 	@price =  @item.price*@tax
    	 end

    end
	
end

