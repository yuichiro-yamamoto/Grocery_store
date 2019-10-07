class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :end_addresses, dependent: :destroy
  has_many :end_cart_items, dependent: :destroy
  has_many :end_purchase_histories, dependent: :destroy
  
  # def email_required?
  # 	false
  # end

  # def email_changed?
  # 	false
  # end

end
