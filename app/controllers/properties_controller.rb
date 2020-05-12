class PropertiesController < ApplicationController 

    get '/properties' do
        @properties = Property.all 
        erb :"/properties/index"
    end

end 