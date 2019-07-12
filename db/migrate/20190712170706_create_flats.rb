class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :address
      t.references :owner, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
