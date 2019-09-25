class ChangeDataTelephoneNumberHistoryToEndPurchaseDetails < ActiveRecord::Migration[5.2]
  def change
  	 change_column :end_purchase_details, :telephone_number_history, :string
  end
end
