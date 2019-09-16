class Item < ApplicationRecord
    attachment :item_image

	has_many :end_cart_items

	enum sales_status:[:販売中, :販売停止中]

end
