class ChangeDataPostalCodeHistoryToEndPurchaseDetails < ActiveRecord::Migration[5.2]
  def change
  	 change_column :end_purchase_details, :postal_code_history, :string
  end
end
