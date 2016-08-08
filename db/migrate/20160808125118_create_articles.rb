class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.boolean :published, default: false
      t.text :content
      t.string :cover
      t.integer :series_id

      t.timestamps null: false
    end
  end
end
