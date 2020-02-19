class AddPrivacyToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :instructions, :private, :boolean, null: false, default: false
  end
end
