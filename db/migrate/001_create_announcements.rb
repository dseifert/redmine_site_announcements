class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.references :user
      t.string :title
      t.text :message
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
    add_index :announcements, :user_id
  end
end
