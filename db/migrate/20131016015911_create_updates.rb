class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :doi_id
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
