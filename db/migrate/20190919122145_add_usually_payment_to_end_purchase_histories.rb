class AddUsuallyPaymentToEndPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :end_purchase_histories, :usually_pament, :string
  end
end
