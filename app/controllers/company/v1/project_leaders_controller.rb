class Company::V1::ProjectLeadersController < ApplicationController
   
    def index
       project_leader = ProjectLeader.all.order(created_at: :desc)
       render json: project_leader
    end
 
    def show
       project_leader = find_project_leader
       render json: project_leader
    end
 
    def update
       project_leader = find_project_leader.update!(project_leader_params)
       if project_leader
         render json: project_leader
       else
         render json: project_leader.error
       end
    end
 
    private
 
    def find_project_leader
       @project_leader ||= ProjectLeader.find(params[:id])
    end
    
    def project_leader_params
       params.permit(:name, :email, :password, :company_id)
    end
 
 end