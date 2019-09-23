class EndCartItemsController < ApplicationController

  def create
  	  cart = EndCartItem.new(end_cart_item_params)
      cart.end_user_id = current_end_user.id         #<-----cart変数のend_user_idカラムにログインユーザーID(current_end_user.id)を入れる
      cart.save
      redirect_to end_cart_items_path
  end

  def index
  	@carts = EndCartItem.where(end_user_id: current_end_user.id )      #<------現在ログインしているユーザーのカート情報のみ検索。

    @date = Tax.find(1).end
     if Date.today <= @date   #<--------現在の日時が2019/9/30以前なら
      @tax = 1.08             #<--------消費税は8％
     else
      @tax = 1.1              #<--------2019/10/1以降は10％
     end

  end

  def destroy
    cart = EndCartItem.find_by(end_user_id: current_end_user.id)
    cart.destroy
    redirect_to end_cart_items_path
  end

  def update
    cart = EndCartItem.find(params[:id])
    cart.update(end_cart_item_params)
    redirect_to end_cart_items_path(cart.id)
  end

  private
  def end_cart_item_params
  	params.require(:end_cart_item).permit(:end_user_id, :purchase_number, :item_id)
  end

end
