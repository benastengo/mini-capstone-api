class RemoveProductIdAndQuantityFromOrder < ActiveRecord::Migration[7.0]
  def change
    change_table :orders do |t|
      t.remove :product_id, :quantity
    end
  end
end
