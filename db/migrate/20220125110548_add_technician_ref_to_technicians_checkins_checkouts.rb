class AddTechnicianRefToTechniciansCheckinsCheckouts < ActiveRecord::Migration[6.1]
  def change
    add_reference :technicians_checkins_checkouts, :technicians, foreign_key: true
  end
end
