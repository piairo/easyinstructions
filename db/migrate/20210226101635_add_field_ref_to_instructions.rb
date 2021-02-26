class AddFieldRefToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_reference :instructions, :field, foreign_key: true
  end
end
