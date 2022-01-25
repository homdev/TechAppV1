class Company::V1::CustomersController < ApplicationController
    before_action :authenticate_company!
    before_action :find_customer, only: %i[show destroy update]
    
    def index
      customers = current_customer.customers.all.order(created_at: :desc)
      render json: customers
    end
  
    def show
      @customer = find_customer
    end
  
    def create
      customer = current_customer.customers.create!(customer_params)
      if customer
        render json: customer
      else
        render json: customer.errors
      end
    end
  
    def update
      customer = find_customer.update!(customer_params)
      if customer
        render json: customer
      else
        render json: customer.errors
      end
    end
  
    def destroy
      find_customer&.destroy
      render json: { message: 'Customers deleted!' }
    end
  
    private
  
    def find_customer
      @customer ||= Customer.find(params[:id])
    end
  
    def customer_params
      params.permit(:name, :address,:siret, :email, :phone_number, :logo)
    end
  end
  