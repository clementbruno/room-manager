class RenameStartDateinBookings < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :start_date, :start_time
  end
end
