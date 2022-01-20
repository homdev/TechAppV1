Rails.application.routes.draw do
  mount_devise_token_auth_for 'Company', at: 'company_auth'

  mount_devise_token_auth_for 'Technician', at: 'technician_auth'
  as :technician do
    # Define routes for Technician within this block.
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
