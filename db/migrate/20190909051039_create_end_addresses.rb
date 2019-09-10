class CreateEndAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :end_addresses do |t|

      t.integer :postal_code, null:false
      t.string :address, null:false
      t.string :destination_name, null:false
      t.integer :telephone_number, null:false
      
      t.timestamps
    end
  end
end
