class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title, null: false
      t.integer :season, default: 1
      t.timestamps
    end
    add_index :shows, :title, unique: true
  end
end
