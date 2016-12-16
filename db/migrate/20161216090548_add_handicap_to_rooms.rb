class AddHandicapToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :handicap, :boolean
  end
end
