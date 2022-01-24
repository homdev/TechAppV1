class AddProjectLeaderRefToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :project_leader, foreign_key: true
  end
end
