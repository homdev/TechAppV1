class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :configure_permitted_parameters, if: :devise_controller?
        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
                devise_parameter_sanitizer.permit(:account_update, keys: [:name] )
        end
end

#:first_name,:last_name, :name, :email, :password, :password_confirmation, :address, :city, :zip_code, :phone, :phone_number, :vehicle_number, :lat, :lng, :vehicle_type, :stripe_id, :vehicle_color, :gcu, :legal_notice 
#:first_name,:last_name, :email, :password, :password_confirmation, :address, :city, :zip_code, :phone, :phone_number, :vehicle_number, :lat, :lng, :vehicle_type, :vehicle_color, :gcu, :legal_notice