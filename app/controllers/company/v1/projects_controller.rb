class Company::V1::ProjectsController < ApplicationController
  before_action :authenticate_company!
  
  def index
    projects = current_company.projects.all.order(created_at: :desc)
    render json: projects
  end

  def show
    @project = find_project
  end

  def create
    project = current_company.projects.create!(project_params)
    if project
      render json: project
    else
      render json: project.errors
    end
  end

  def update
  end

  def destroy
  end

  private

  def find_project
    @project ||= Project.find(params[:id])
  end

  def project_params
    params.permit(:name, :description, :company_id)
  end
end
