class AddCurrentSignInAtToTechnicians < ActiveRecord::Migration[6.1]
  def change
    add_column :technicians, :current_sign_in_at, :datetime
  end
end
