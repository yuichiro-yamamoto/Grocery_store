class EndPurchaseHistory < ApplicationRecord

	has_many :end_purchase_details, dependent: :destroy
	belongs_to :end_user

	enum payment:[:代金引換, :クレジットカード, :銀行振込み]
end