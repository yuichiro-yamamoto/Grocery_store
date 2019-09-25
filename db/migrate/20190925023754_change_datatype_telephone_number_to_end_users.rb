class ChangeDatatypeTelephoneNumberToEndUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_users, :telephone_number, :string
  end
end
