class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :text, null: false
      t.integer :poll_id, null: false
      t.timestamps
    end
    add_index :polls, :poll_id, unique: true
  end
end
