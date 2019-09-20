class Item < ApplicationRecord
    attachment :item_image

	has_many :end_cart_items

	enum sales_status:[:在庫多数, :在庫僅か, :販売停止中]

end
