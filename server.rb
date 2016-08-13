require 'sinatra'
require 'pry'

get '/' do
	erb :main_page
end

get '/options' do
	@options = ['mv', 'cp', 'mkdir', 'rm', 'cd', 'pwd','search', 'exit']
	erb :options
end

get '/search' do
	erb :search
end

get '/touch' do
	erb :touch
end

get '/mv' do
	erb :mv
end

get '/mkdir' do
	erb :mkdir
end

get '/ls' do
	erb :ls
end

get '/cp' do
	@options = ['mv', 'cp', 'mkdir', 'rm', 'cd', 'pwd','search', 'exit']
	erb :cp
end

post '/search' do
	@input = params[:name]
	erb :search
end
