require 'sinatra'
require_relative "isbnv2.rb"
#require any gems
get '/' do 
	erb :welcome
end

post '/isbn' do
	isbn = params[:isbn]
	redirect '/result?isbn=' + isbn
end

get '/result' do
	isbn = params[:isbn]
	erb :result, :locals => {:isbn => isbn}

end

post '/result' do
	isbn = params[:isbn]
	result = valid_isbn?(isbn)
end

get '/contact' do
	erb :contact
end

get '/about' do
	erb :about
end