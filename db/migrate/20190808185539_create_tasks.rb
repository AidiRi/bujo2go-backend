class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :important
      t.string :status
      t.date :date
      t.references :user, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
