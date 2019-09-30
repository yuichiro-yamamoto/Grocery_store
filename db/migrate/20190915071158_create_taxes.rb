class CreateTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      
      t.integer :consumption_tax, null:false
      t.timestamps
    end
  end
end
