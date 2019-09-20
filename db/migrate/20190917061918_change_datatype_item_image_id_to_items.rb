class ChangeDatatypeItemImageIdToItems < ActiveRecord::Migration[5.2]
  def change
  	change_column :items, :item_image_id, :text
  end
end
