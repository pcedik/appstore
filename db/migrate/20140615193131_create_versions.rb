class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :aplikace_id
      t.string :version

      t.timestamps
    end
  end
end
