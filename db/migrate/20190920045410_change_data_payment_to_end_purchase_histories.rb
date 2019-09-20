class ChangeDataPaymentToEndPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_purchase_histories, :payment, :integer
  end
end
