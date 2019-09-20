class EndItemsController < ApplicationController

    def index
    	@items = Item.all
    end

    def show
        @cart = EndCartItem.new
    	@item = Item.find(params[:id])

# ーーーーーーーーーーーーーー税込み価格表示の為の計算ーーーーーーーーーーーーーーーーー

         @date = Tax.find(1).end    #<===2019/9/30以前の消費税に関する情報をインスタンス変数に入れる
    	 if Date.today <= @date            #<==もし、今日が2019/9/30以前なら
    	     @tax = 1.08                   #<===消費税8％で
    	 	 @price =  @item.price*@tax    #<===税込み価格を算出し、商品詳細画面に反映
    	 else
    	 	 @tax = 1.1  #<===それ以降なら消費税10％で
    	 	 @price =  @item.price*@tax    #<===税込み価格を算出し、商品詳細画面に反映
    	 end
   end

end
