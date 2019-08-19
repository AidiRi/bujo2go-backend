class AddTypeToNote < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :item_type, :string
  end
end
