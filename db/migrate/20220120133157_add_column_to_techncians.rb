class AddColumnToTechncians < ActiveRecord::Migration[6.1]
  def change
    add_column :technicians, :sign_in_count, :integer, default: 0, null: false
  end
end
