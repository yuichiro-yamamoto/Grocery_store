class AddWeightToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :weight, :integer
  end
end
