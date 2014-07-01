class CreatePreviews < ActiveRecord::Migration
  def change
    create_table :previews do |t|
      t.attachment :foto
      t.references :aplikace, index: true

      t.timestamps
    end
  end
end
