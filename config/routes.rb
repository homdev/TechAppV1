Rails.application.routes.draw do
  
  get 'projects/index'
  get 'projects/show'
  get 'projects/create'
  get 'projects/update'
  get 'projects/destroy'
  mount_devise_token_auth_for 'Company', at: 'company_auth'
  mount_devise_token_auth_for 'Technician', at: 'technician_auth'
  as :technician do
    # Define routes for Technician within this block.
  end

  namespace :company do
    namespace :v1 do
      resources :technicians
      resources :companies
      resources :projects
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
