class ChangeProductTable < ActiveRecord::Migration[5.2]
  def change
    change_table :products do |t|
      # # t.remove :description, :name
      # t.string :part_number
      # # t.index :part_number
      # # t.rename :upccode, :upc_code

      t.rename  :describtion, :description

    end
  end
end
