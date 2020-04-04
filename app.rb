require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb 'Can you handle a secret?'
end
