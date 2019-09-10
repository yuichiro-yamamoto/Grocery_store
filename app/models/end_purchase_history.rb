class EndPurchaseHistory < ApplicationRecord

	has_many :end_purchase_details, dependent: :destroy
	belongs_to :end_user
end
