class EndPurchaseDetail < ApplicationRecord

	belongs_to :end_purchase_history
    enum delivery_status:[:購入受付, :発送準備中, :発送済み]

    	attachment :item_image_history
end
