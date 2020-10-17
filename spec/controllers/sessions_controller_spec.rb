require 'rails_helper'

RSpec.describe SessionsController do 
    describe "GET index" do 
        it "has an index action" do 
            visit root_path
            expect(page.status_code).to eq(200)
        end 
    end 
end 