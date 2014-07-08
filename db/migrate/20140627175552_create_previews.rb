class CreatePreviews < ActiveRecord::Migration
  def change
    create_table :previews do |t|
      t.attachment :foto
      t.references :aplikace_platform, index: true

      t.timestamps
    end
  end
end
