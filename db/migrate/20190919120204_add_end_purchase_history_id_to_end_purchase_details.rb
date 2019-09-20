class AddEndPurchaseHistoryIdToEndPurchaseDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :end_purchase_details, :end_purchase_history_id, :integer
  end
end
