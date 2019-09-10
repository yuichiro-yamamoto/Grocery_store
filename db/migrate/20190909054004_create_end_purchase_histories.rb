class CreateEndPurchaseHistories < ActiveRecord::Migration[5.2]

  def change

    create_table :end_purchase_histories do |t|

     t.integer :total_cost, null:false
     t.integer :delivery_fee, null:false
     t.integer :cousumption_tax, null:false
     t.integer :total_item_cost, null:false
     
     t.timestamps

    end
  end
end
