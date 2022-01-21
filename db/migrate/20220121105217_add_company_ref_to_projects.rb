class AddCompanyRefToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :company, foreign_key: true
  end
end
