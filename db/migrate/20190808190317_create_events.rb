class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :status
      t.string :duration
      t.string :hour
      t.datetime :datetime
      t.references :collection, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
