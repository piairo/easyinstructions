class CreateInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :instructions do |t|
      t.integer :step_number
      t.text :title
      t.boolean :status

      t.timestamps
    end
  end
end
