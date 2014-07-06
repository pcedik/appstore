class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.attachment :file
      t.integer :version_id

      t.timestamps
    end
  end
end
