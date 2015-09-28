require 'bundler'
Bundler.require()
require './models/fan'
require 'json'
require "sinatra/json"

ActiveRecord::Base.establish_connection({
  :adapter => 'postgresql',
  :database => 'my_fans'
  })

#Read All: index
get '/fans' do
#@fans = Fan.all
json Fan.all
erb :'fans/index'
end

#Form for making new fan
get '/' do
erb :'fans/new'
end

#Create New Fan information
post '/fans' do
   Fan.create(params[:fan])
end

#Read invidual Fan
get '/fans/:id' do

  erb :'fans/show'
end

#Form for updating
get '/fans/:id/edit' do
  erb :'fans/edit'
end

#Updating Fan information
put '/fans/:id' do
end

#Deleting Fan information
delete '/fans/:id'do

end
