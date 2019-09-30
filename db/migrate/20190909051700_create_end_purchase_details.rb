class CreateEndPurchaseDetails < ActiveRecord::Migration[5.2]

  def change

    create_table :end_purchase_details, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

      t.string :item_image_history_id, null:false
      t.string :item_name_history, null:false
      t.integer :telephone_number_history, null:false
      t.integer :item_price_history, null:false
      t.integer :purchase_number_history, null:false
      t.integer :postal_code_history, null:false
      t.string :address_history, null:false
      t.string :destination_name_history, null:false

      # ----enumwを使用----
      t.string :delivery_status, null:false

      t.timestamps

    end
  end
end

