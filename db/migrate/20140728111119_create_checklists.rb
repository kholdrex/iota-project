class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :name
      t.boolean :completed
      t.integer :task_id

      t.timestamps
    end
  end
end
