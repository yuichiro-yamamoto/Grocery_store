class AddEndUserIdToEndPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :end_purchase_histories, :end_user_id, :integer
  end
end
