require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do
    the_original_word = params[:user_first_word]
    @the_translated_word = piglatinize(the_original_word)
    erb :results
  end
  
  get '/klossify' do
    erb :klossify_form
  end
  
  post '/klossify' do
    the_original_word = params[:user_first_word]
    @the_translated_word = klossify(the_original_word)
    erb :results
  end
  
#link to about page

#post route


end