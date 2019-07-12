class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :number
      t.text :description
      t.string :picture_url
      t.boolean :status
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
