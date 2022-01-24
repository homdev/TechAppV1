class Company::V1::ProjectsController < ApplicationController
  before_action :authenticate_company!
  before_action :find_project, only: %i[show destroy update]
  
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
    project = find_project.update!(project_params)
    if project
      render json: project
    else
      render json: project.errors
    end
  end

  def destroy
    find_project&.destroy
    render json: { message: 'Projects deleted!' }
  end

  private

  def find_project
    @project ||= Project.find(params[:id])
  end

  def project_params
    params.permit(:name, :description, :company_id)
  end
end
