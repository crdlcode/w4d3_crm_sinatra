require_relative 'contact'
require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  @title = 'Home'
  erb :index
end

get '/contacts' do
  @title = 'Contacts'
  @contacts = Contact.all
  erb :contacts
end

get '/about' do
  @title - 'About Us'
  erb :about
end


after do
  ActiveRecord::Base.connection.close
ends
