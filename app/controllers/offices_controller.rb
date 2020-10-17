class OfficesController < ApplicationController

    def index
        @offices = Office.all
    end 

    def show 
        @office = Office.find_by(id: params[:id])
    end 

    def select
    end 

    def state_select
        office = Office.find_by_state(params[:office][:state])
        redirect_to office_patients_path(office)
    end

    private
    def office_params
        params.require(:office).permit(:state, :city)
    end 

    
end
