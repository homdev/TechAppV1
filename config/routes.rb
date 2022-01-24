Rails.application.routes.draw do

  mount_devise_token_auth_for 'Company', at: 'company_auth'
  mount_devise_token_auth_for 'Technician', at: 'technician_auth'

  mount_devise_token_auth_for 'ProjectLeader', at: 'project_leader_auth'
  as :project_leader do
    # Define routes for ProjectLeader within this block.
  end
  as :technician do
    # Define routes for Technician within this block.
  end

  namespace :company do
    namespace :v1 do
      resources :technicians
      resources :companies
      resources :projects
      resources :project_leaders
    end
  end

  namespace :technician do
    namespace :v1 do
      resources :projects, :only => [:index, :show] 
    end
  end

  namespace :project_leader do
    namespace :v1 do
      resources :projects
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
