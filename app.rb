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

get '/' do
	@barbers = Barbers.order "created_at DESC"
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

	erb "<h2>Спасибо вы записались!!</h2>"

end
