class CreateEndCartItems < ActiveRecord::Migration[5.2]
  
  def change
    
    create_table :end_cart_items, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      
      t.integer :purchase_number, null:false, default:1
      t.timestamps

    end
  end
end
