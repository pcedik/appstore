class CreateAplikacePlatforms < ActiveRecord::Migration
  def change
    create_table :aplikace_platforms do |t|
      t.integer :aplikace_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
