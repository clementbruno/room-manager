class RemoveSizeFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :size
  end
end
