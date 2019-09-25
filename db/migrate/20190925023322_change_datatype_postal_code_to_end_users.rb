class ChangeDatatypePostalCodeToEndUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_users, :postal_code, :string
  end
end
