class ClientsController < ApplicationController

get "/clients/new" do 
    erb :"client/new"
end


post "/clients" do 
    if params[:name] == "" || params[:email] == "" || params[:tattoo] == ""
        erb :failure 
    else
  @client = Client.create(:name => params[:name],:email => params[:email],:tattoo => params[:tattoo],:artist_id => current_user.id)

    redirect "/artists"
    end 
end 
 get '/clients/:id' do
    @client = Client.find_by_id(params[:id])
    erb :"client/show" 
 end
 
 get '/clients/:id/edit' do  
    @client = Client.find_by_id(params[:id])
    erb :"client/edit"
  end

  patch '/clients/:id' do 
    @client = Client.find_by_id(params[:id])
    @client.email = params[:email]
    @client.tattoo = params[:tattoo]
    @client.save
    redirect to "/artists"
  end
  

end 