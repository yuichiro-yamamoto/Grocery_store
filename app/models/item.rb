class Item < ApplicationRecord
    attachment :item_image

	belongs_to :end_cart_item , optional: true

	enum sales_status:[:販売中, :販売停止中]

end
