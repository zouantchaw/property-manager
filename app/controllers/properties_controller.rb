class PropertiesController < ApplicationController 

    get '/properties' do
        @properties = Property.all 
        erb :"/properties/index"
    end

    get '/properties/new' do
        @tenants = Tenant.all 
        erb :"/properties/new"
    end

    post '/properties' do
        binding.pry
    end

end 