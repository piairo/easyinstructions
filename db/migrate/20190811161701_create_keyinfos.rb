class CreateKeyinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :keyinfos do |t|
      t.time :checkout
      t.string :wifiname
      t.text :wificode
      t.string :owner
      t.string :contact
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
