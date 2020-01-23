class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :description
      t.text :description
      t.boolean :status
      t.references :instruction, foreign_key: true

      t.timestamps
    end
  end
end
