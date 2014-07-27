class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|

      t.string  :name
      t.text    :description
      t.string  :image
      t.integer :priority 

      t.timestamps
    end
  end
end
