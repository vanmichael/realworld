class CreateGroupies < ActiveRecord::Migration
  def change
    create_table :groupies do |t|
      t.string :name
      t.integer :contestant_id

      t.timestamps
    end
    add_index :groupies, :contestant_id
  end
end
