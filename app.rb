#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barber.db"}

class Clients < ActiveRecord::Base
end

class Barbers < ActiveRecord::Base

end

before do
	@barbers = Barbers.all
	@clients = Clients.all	
end

get '/' do
	erb :index
end

get '/visit' do
	erb :visit
end

post '/visit' do 

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	c = Clients.new
    c.username = @username
    c.phone = @phone
    c.datetime = @datetime
    c.barber = @barber
    c.color = @color
    c.save

    
	erb "<h2>Спасибо вы записались!!</h2>"
	
end
