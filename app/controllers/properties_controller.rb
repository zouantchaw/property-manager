class PropertiesController < ApplicationController 

    get '/properties' do
        if logged_in?
            @user = current_user
            @properties = @user.properties
            erb :"/properties/index"
        else
            redirect '/login'
        end 
    end

    get '/properties/new' do
        if logged_in?
            @tenants = Tenant.all.select { |x| x.property_id == nil}
            erb :"/properties/new"
        else
            redirect '/login'
        end 
    end

    post '/properties' do
        @property = current_user.properties.build(address: params[:property][:address], description: params[:property][:description], rent: params[:property][:rent])
        if !@property.address.empty? && !@property.description.empty? && !@property.rent.empty?
            @property.save
            if params[:tenant]
                @property.tenant = Tenant.find_by_id(params[:tenant][:tenant_id][0].to_i)
            end 
            redirect '/properties'
        else 
            redirect '/properties/new'
        end 
    end

    get '/properties/:id' do
        if logged_in?
            @property = current_user.properties.find_by_id(params[:id])
            erb :"properties/show"
        else 
            redirect '/login'
        end 
    end 

    get '/properties/:id/edit' do
        if logged_in? 
            @property = current_user.properties.find_by_id(params[:id])
            @tenants = Tenant.all.select { |x| x.property_id == nil}
            erb :"properties/edit"
        else 
            redirect
        end 
    end 

    patch '/properties/:id' do
        @property = current_user.properties.find_by_id(params[:id])
        @property.update(params[:property])
        if params[:tenant]
            @property.tenant = Tenant.find_by_id(params[:tenant][:tenant_id][0].to_i)
            redirect "/properties/#{@property.id}"
        else
            redirect "/properties/#{@property.id}"
        end
    end

    delete '/properties/:id' do
        @property = current_user.properties.find_by_id(params[:id])
        @property.tenant = nil  
        @property.destroy 
        redirect '/properties'
    end 
end 