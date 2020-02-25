class ChangePositionToBeIntegerInSteps < ActiveRecord::Migration[5.2]
  def change
  change_column :steps, :position, 'integer USING CAST(position AS integer)'

  end
end
