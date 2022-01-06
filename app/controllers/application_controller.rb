class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # get "/user" do

  #   {
  #     name: "Yontida"
  # }.to_json

  # end

  get "/users" do
    User.all.to_json
  end


  get "/recipes" do
    recipes = Recipe.all
    recipes.to_json({include: [user:{only: :name}]})
  end

end
