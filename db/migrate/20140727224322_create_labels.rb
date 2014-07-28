class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.string :color
      t.references :board, index: true

      t.timestamps
    end
  end
end
