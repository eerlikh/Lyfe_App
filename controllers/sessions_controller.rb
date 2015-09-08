class SessionsController < ApplicationController

  post '/' do # Attempt to sign in

    # When a post request comes to sessions I want to find the user
    user = User.find_by({username: params[:username]})

    # See what password they typed in
    password_attempt = params[:password]

    # If I found the user and password match, store in a temporary session
    if user && user.password==password_attempt
      # User is good
      session[:user_id] = user.id
       binding.pry 
      redirect '/users/profile'
    else
      # User is no good
      redirect '/'
    end
  end

  delete '/' do # Log out
    session[:user_id] = nil
    redirect '/'
  end

end
