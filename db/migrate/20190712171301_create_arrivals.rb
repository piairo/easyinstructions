class CreateArrivals < ActiveRecord::Migration[5.2]
  def change
    create_table :arrivals do |t|
      t.integer :description
      t.text :description
      t.boolean :status
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
