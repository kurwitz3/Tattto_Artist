require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get "/" do
    erb :homepage
  end
  
 
  get "/signup" do 
      erb :signup
  end 
  
  post "/signup" do 
    if params[:name]== "" || params[:password] == "" || params[:email] == ""
      redirect "/signup"
    else
      @new_artist = Artist.new(:name => params[:name],:password => params[:password],:email => params[:email])
      @new_artist.save 
      redirect to "/"
    end 
  end 
  
  post  "/login" do
    current_artist = Artist.find_by(:email => params[:email])
      if current_artist && current_artist.authenticate(params[:password])
        session[:user_id] = current_artist.id
        redirect to "/artists"
      else
        redirect to "/failure"
    end
  end
  
  get "/failure" do
    erb :failure
  end
      
  get "/sessions/logout" do 
    session.clear
      redirect "/"
  end
      
  helpers do
    
    def current_user
      Artist.find(session[:user_id])
      end
    end
end
