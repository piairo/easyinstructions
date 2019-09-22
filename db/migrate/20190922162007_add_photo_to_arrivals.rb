class AddPhotoToArrivals < ActiveRecord::Migration[5.2]
  def change
    add_column :arrivals, :photo, :string
  end
end
