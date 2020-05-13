class PropertiesController < ApplicationController 

    get '/properties' do
        if logged_in?
            @properties = current_user.properties
            binding.pry
            erb :"/properties/index"
        else
            redirect '/login'
        end 
    end

    get '/properties/new' do
        @tenants = Tenant.all 
        erb :"/properties/new"
    end

    post '/properties' do
    end

end 