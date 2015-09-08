class UsersController < ApplicationController

  # /users/new
  get '/new' do # Sign up
    erb :'users/new'
  end

  # /users/
  post '/' do
    user = User.new(params[:user])
    user.password = params[:password]
    user.save
    redirect '/'
  end

  # /users/login
  get '/login' do
    erb :'users/login'
  end

  # /users/profile

  get '/profile' do

    @current_user = current_user
    erb :'users/profile'
  end


end
