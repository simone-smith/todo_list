require 'sinatra/base'

class ToDo < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/items' do
    session[:item] = params[:item]
    redirect '/items'
  end

  get '/items' do
    @item = session[:item]
    erb :items
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
