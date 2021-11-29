class RemoveQuentityFromLineItems < ActiveRecord::Migration[5.2]

  def change
    remove_column :line_items, :quentity
  end

end
