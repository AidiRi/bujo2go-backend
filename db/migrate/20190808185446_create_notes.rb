class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text :content
      t.date :date
      t.references :user, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
