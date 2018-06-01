require 'sinatra/base'
require './lib/list'

class ToDo < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/items' do
    if $list == nil
      $list = List.new
    end
    $item = $list.add(params[:item])
    redirect '/items'
  end

  get '/items' do
    @item = $item
    # @item = session[:item]
    erb :items
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
