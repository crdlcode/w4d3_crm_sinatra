require_relative 'contact'
require 'sinatra'

get '/' do
  redirect to ('/index')
end

get '/home' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contacts' do
  @contact = Contact.all
  erb :contacts
end



after do
  ActiveRecord::Base.connection.close
end
