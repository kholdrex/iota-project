class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :due
      t.integer :parents_ids, array: true
      t.integer :state
      t.integer :assignees, array: true
      t.integer :priority
      t.references :category, index: true

      t.timestamps
    end
  end
end
