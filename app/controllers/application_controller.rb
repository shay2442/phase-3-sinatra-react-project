class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/recipes" do
    recipes = Recipe.all
    recipes.to_json
  end

  get "/user/:id" do
   user = User.find(params[:id])
   user.to_json(include: :recipes)
end

  post "/recipes" do 
    recipe = Recipe.create(title: params[:title], from: params[:from], category: params[:category], notes: params[:notes], user_id: params[:user_id])
    recipe.to_json
  end

  delete "/recipes/:id" do
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
  end

end
