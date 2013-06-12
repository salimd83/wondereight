class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :title_slug
      t.string :task
      t.string :caption
      t.string :client
      t.string :region
      t.string :created
      t.text :description

      t.timestamps
    end
  end
end
