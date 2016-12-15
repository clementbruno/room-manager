class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :sits
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
