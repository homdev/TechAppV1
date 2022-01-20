class AddLastSignInAtToTechnicians < ActiveRecord::Migration[6.1]
  def change
    add_column :technicians, :last_sign_in_at, :datetime
  end
end
