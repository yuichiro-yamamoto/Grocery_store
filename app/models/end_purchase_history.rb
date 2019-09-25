class EndPurchaseHistory < ApplicationRecord

	has_many :end_purchase_details, dependent: :destroy
	belongs_to :end_user



    enum payment:[:クレジットカード, :代金引換, :銀行振込み]

	def item_total_price(user)
	   items = user.end_cart_items
	   total_price = 0
	   items.each do |i|	
	   		total_price +=i.purchase_number*i.item.price
	   end
	   total_price
	end
end



# ==============================================================================
#  user = current_end_user
#  current_end_userに紐ついているend_cart_itemsをitems変数に渡し、繰り返し処理する。
#  カートの中の購入数カラムとカートに紐ついている商品テーブルの価格カラムを掛け合わせて、total_price変数に格納。
#  total_price変数の初期値は0で,金額が算出される毎に変数にいれる。