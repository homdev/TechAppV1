class CreateTechniciansCheckinsCheckouts < ActiveRecord::Migration[6.1]
  def change
    create_table :technicians_checkins_checkouts do |t|
      t.datetime :checkin_datetime
      t.datetime :checkout_datetime
      t.string :checkin_coordinates
      t.string :checkout_coordinates

      t.timestamps
    end
  end
end
