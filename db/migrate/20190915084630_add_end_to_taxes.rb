class AddEndToTaxes < ActiveRecord::Migration[5.2]
  def change
    add_column :taxes, :end, :datetime
  end
end
