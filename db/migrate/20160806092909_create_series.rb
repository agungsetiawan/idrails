class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :title
      t.integer :level, default: 0
      t.text :excerpt
      t.string :cover
      t.boolean :finish, default: false

      t.timestamps null: false
    end
  end
end
