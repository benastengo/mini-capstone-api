class RemoveCartelFromSupplier < ActiveRecord::Migration[7.0]
  def change
    remove_column :suppliers, :cartel, :string
  end
end
