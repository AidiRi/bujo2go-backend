class AddTypeToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :item_type, :string
  end
end
