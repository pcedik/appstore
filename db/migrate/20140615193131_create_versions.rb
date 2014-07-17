class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :aplikace_platform_id
      t.string :version
      t.boolean :stable

      t.timestamps
    end
  end
end
