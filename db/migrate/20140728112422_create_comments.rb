class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :rank
      t.integer :task_id
      t.integer :user_id
      t.integer :users_voted, array: true
      t.timestamps
    end
  end
end
