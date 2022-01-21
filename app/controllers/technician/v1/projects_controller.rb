class Technician::V1::ProjectsController < ApplicationController
    before_action :authenticate_technician!
    
    def index
      projects = Project.all.order(created_at: :desc)
      render json: projects
    end
  
    def show
      @project = find_project
      render json: @project
    end
  
    private
  
    def find_project
      @project ||= Project.find(params[:id])
    end
  
    def project_params
      params.permit(:name, :description)
    end
  end
  