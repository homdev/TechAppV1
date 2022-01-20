class Company::V1::CompaniesController < ApplicationController

    def index
        companies = Company.all.order(created_at: :desc)
        render json: companies
    end

    def show
        company = find_company
        render json: company
    end

    def update
        company = find_company.update!(company_params)
        if company
            render json: company
        else
            render json: company.error
        end
    end

    private

    def find_company
        @company ||= Company.find(params[:id])
    end
    def company_params
        params.permit(:name, :email, :password)
    end

end