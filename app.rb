require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

before do
  @barbers = Barber.all
end

get '/' do
  erb :index
end

get '/visit' do
  erb :visit
end

post '/visit' do
  
  # username, phone, datetime
  @username = params[:username]
  @phone = params[:phone]
  @datetime = params[:datetime]
  @barber = params[:barber]
  @color = params[:colorpicker]

  erb "<h2>Спаибо, вы запиались!</h2>"

end