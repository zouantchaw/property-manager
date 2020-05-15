class UsersController < ApplicationController 

    get '/users/home' do
        if logged_in? 
            erb :"users/index"
        else
            redirect '/login'
        end 
    end 
    
    get '/signup' do
        if logged_in?
            redirect '/properties'
        end 
        erb :"users/create_user"
    end

    post '/signup' do
        unless params[:name] == "" || params[:email] == ""
            user = User.new(name: params[:name], email: params[:email], password: params[:password])
            if user.save 
                session[:user_id] = user.id 
                redirect '/properties'
            end 
        end
        redirect '/signup'
    end

    get '/login' do
        unless logged_in?
            erb :'users/login'
        else
            redirect '/users/home'
        end 
    end

    post '/login' do
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect '/users/home'
        else
            redirect '/login'
        end 
    end

    get '/logout' do
        if logged_in?
            session.clear
        end 
        redirect '/login'
    end

    post '/logout' do
        session.clear
        redirect '/login'
    end

end 