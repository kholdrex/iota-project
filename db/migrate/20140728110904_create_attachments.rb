class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :content
      t.integer :task_id

      t.timestamps
    end
  end
end
