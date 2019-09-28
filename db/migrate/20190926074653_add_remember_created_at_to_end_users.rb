class AddRememberCreatedAtToEndUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :end_users, :remember_created_at, :datetime
  end
end
