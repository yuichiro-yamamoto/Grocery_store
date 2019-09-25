class RemoveCousumptionTaxFromEndPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    remove_column :end_purchase_histories, :cousumption_tax, :integer
  end
end
