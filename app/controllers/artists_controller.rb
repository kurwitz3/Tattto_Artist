require './config/environment'
class ArtistsController < ApplicationController

    get '/artists' do 
      @client = Client.all
      erb :"artist/index"
    end 


end 