require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
  end
  
  get '/posts/new' do 
    erb :new 
  end 
  
  post '/posts' do 
    @post = Post.new(params[:name], params[:content])
    binding.pry 
    erb :index 
  end 
end
