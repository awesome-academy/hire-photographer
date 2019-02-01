class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.references :customer, foreign_key: true
      t.references :photographer, foreign_key: true
      t.decimal :hourly_rate
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end