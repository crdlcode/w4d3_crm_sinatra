require 'sinatra'
require_relative 'contact'


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

get '/contacts/:id' do
  id = params[:id]
  @contact = Contact.find(id)

  erb :contact

get '/about' do
  @title - 'About Us'
  erb :about
end


after do
  ActiveRecord::Base.connection.close
end
