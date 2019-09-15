class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :item_name, null:false
      t.integer :price, null:false
      t.text    :item_explain, null:false
      t.integer  :stock, null:false
      t.integer  :item_image_id, null:false

      # ----enumを使用-----
      t.integer :sales_status, null:false



      t.timestamps
    end
  end
end
