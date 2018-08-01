require_relative 'contact'
require 'sinatra'

get '/' do
  erb :index
end

get '/home' do
  erb :index
end

get '/contacts' do
  erb :index

get '/about' do
  erb :about


after do
  ActiveRecord::Base.connection.close
ends
