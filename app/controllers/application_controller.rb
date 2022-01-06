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

  post "/recipes" do 
    recipe = Recipe.create({recipe_name:params[:recipe_name], image_url:params[:image_url], ingredient:params[:ingredient], direction:params[:direction], user_id:params[:user_id]})
    recipe.to_json(include: :user)
  end 


  delete "/recipes/:id" do

    recipe = Recipe.find(params[:id])
    recipe.destroy
  
    {message: 'recipe deleted'}.to_json
  end

end
