class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :content
      t.string :status
      t.references :notifiable, polymorphic: true

      t.timestamps
    end
  end
end
