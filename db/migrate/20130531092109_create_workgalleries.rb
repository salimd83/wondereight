class CreateWorkgalleries < ActiveRecord::Migration
  def change
    create_table :workgalleries do |t|
      t.string :title
      t.integer :work_id

      t.timestamps
    end

    add_index :workgalleries, [:work_id, :created_at]
  end
end
