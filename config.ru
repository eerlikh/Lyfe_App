require 'bundler'
Bundler.require

# Models
require './models/user'

# Helpers
require './helpers/session_helper'

# Controllers
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'
require './controllers/api/api_controller'
require './controllers/api/lyfe_bits_controller'


# Routes
map('/users'){ run UsersController}
map('/sessions'){run SessionsController}
map('/api/lyfe_bits'){run LyfeBitsController}
map('/'){run WelcomeController}
