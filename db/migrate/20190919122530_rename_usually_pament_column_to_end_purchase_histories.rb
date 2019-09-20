class RenameUsuallyPamentColumnToEndPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :end_purchase_histories, :usually_pament, :payment
  end
end
