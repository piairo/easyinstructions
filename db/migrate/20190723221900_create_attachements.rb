class CreateAttachements < ActiveRecord::Migration[5.2]
  def change
    create_table :attachements do |t|
      t.string :photo
      t.references :step, foreign_key: true

      t.timestamps
    end
  end
end
