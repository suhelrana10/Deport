class ChangeProductColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, :decimal, precision: 8, scale: 3
    change_column :products, :description, :text

  end
end
