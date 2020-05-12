class PropertiesController < ApplicationController 

    get '/properties' do
        @properties = Property.all 
        erb :"/properties/index"
    end

    get '/properties/new' do
        erb :"/properties/new"
    end

end 