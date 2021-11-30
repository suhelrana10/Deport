class AddQuantityToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :counter, :integer, default:1  
  end
end
