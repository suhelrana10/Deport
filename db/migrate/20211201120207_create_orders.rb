class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.text :address
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
