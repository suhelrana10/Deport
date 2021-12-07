class AddColumnToAdmin < ActiveRecord::Migration[5.2]
  def change

    add_column :admins, :type, :string
  end
end
