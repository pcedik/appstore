class CreateApplications < ActiveRecord::Migration
  def change
    create_table :aplikaces do |t|
      t.string :title
      t.string :alias
      t.text :description
      t.timestamps
    end
  end
end
