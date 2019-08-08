class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.integer :length

      t.timestamps
    end
  end
end
