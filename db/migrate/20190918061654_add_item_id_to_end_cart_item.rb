class AddItemIdToEndCartItem < ActiveRecord::Migration[5.2]
  def change
    add_column :end_cart_items, :item_id, :integer
  end
end
