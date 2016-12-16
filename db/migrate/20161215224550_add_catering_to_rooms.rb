class AddCateringToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :catering, :boolean
  end
end
