class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :describtion
      t.decimal :price
      t.string :image_url,

      t.timestamps
    end
  end
end
