class ChangeDataDeliveryStatusToEndPurchaseDetails < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_purchase_details, :delivery_status, :integer
  end
end
