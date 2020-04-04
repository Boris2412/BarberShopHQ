require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

get '/' do
  erb 'Can you handle a secret?'
end
