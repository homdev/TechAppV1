class AddColumnToTechnicians < ActiveRecord::Migration[6.1]
  def change
    add_column :technicians, :current_sign_in_ip, :string
    add_column :technicians, :last_sign_in_ip, :string
  end
end
