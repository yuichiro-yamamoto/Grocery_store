class EndCartItem < ApplicationRecord

	has_many :items, dependent: :destroy
    belongs_to :end_user
end
