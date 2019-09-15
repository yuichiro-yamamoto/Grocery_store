class AddBeginToTaxes < ActiveRecord::Migration[5.2]
  def change
    add_column :taxes, :begin, :datetime
  end
end
