class AddCompanyRefToProjectLeaders < ActiveRecord::Migration[6.1]
  def change
    add_reference :project_leaders, :company, foreign_key: true
  end
end
