class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|

      t.timestamps
      t.string :attachment_path
      t.integer :course_id
    end
  end
end
