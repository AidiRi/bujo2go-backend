class AddTypeToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :item_type, :string
  end
end
