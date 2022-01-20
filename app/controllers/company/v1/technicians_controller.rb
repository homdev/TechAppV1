class Company::V1::TechniciansController < ApplicationController
   
   def index
      technician = Technician.all.order(created_at: :desc)
      render json: technician
   end

   def show
      technician = find_technician
      render json: technician
   end

   def update
      technician = find_technician.update!(technician_params)
      if technician
        render json: technician
      else
        render json: technician.error
      end
   end

   private

   def find_technician
      @technician ||= Technician.find(params[:id])
   end
   
   def technician_params
      params.permit(:name, :email, :password)
   end

end