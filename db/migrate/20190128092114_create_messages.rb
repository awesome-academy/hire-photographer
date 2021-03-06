class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :post, foreign_key: true
      t.references :messageable, polymorphic: true

      t.timestamps
    end
  end
end
