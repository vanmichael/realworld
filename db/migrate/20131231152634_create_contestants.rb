class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name
      t.integer :show_id
  end
  add_index :contestants, :show_id
  end
end
