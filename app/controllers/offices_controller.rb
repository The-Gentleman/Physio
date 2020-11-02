class OfficesController < ApplicationController
    def select
        if params[:q]
            @offices = @offices.patient_search(params[:q])
        end 
    end 

    def show 
        @office = Office.find_by_state(params[:office][:state])
    end 

    def search 
    end 




    private
    def office_params
        params.require(:office).permit(:state, :city)
    end 

    
end
