require 'rails_helper'

RSpec.describe SessionsController do 
    # let(:user) { User.new }

    describe "has an index" do 
        it "has an index action" do 
            visit root_path
            expect(page.status_code).to eq(200)
        end 
    end 

    describe "has a new action" do 
        it "has a new action" do 
            expect(assigns(:user)).to be_a_new(User)
        end 
    end 

end 