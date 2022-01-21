class AddCartelToSupplier < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :cartel, :string
  end
end
