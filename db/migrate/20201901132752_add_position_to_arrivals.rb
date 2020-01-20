class AddPositionToArrivals < ActiveRecord::Migration[5.2]
  def change
    add_column :arrivals, :position, :integer
  end
end
