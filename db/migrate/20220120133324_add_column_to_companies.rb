class AddColumnToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :current_sign_in_at, :datetime
    add_column :companies, :last_sign_in_at, :datetime
    add_column :companies, :current_sign_in_ip, :string
    add_column :companies, :last_sign_in_ip, :string
    add_column :companies, :sign_in_count, :integer, default: 0, null: false
  end
end
