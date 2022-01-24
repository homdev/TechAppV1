class ProjectLeader::V1::ProjectsController < ApplicationController
    before_action :authenticate_project_leader!
    
    def index
      projects = current_project_leader.projects.all.order(created_at: :desc)
      render json: projects
    end
  
    def show
      @project = find_project
    end
  
    def create
      project = current_project_leader.projects.create!(project_params)
      if project
        render json: project
      else
        render json: project.errors
      end
    end
  
    def update
      project = find_project.update!(project_params)
      if project
        render json: project
      else
        render json: project.errors
      end
    end
  
    def destroy
      find_project&.destroy
      render json: { message: 'Project deleted!' }
    end
  
    private
  
    def find_project
      @project ||= Project.find(params[:id])
    end
  
    def project_params
      params.permit(:name, :description, :project_leader_id, :company_id)
    end
  end
  