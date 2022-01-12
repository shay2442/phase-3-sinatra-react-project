
Recipe App

This is an app where users can keep their recipes. It is made with a react frontend and a sinatra backend. It is built with Sqlite3.
The real life relationship that it has is that a user has_many recipies and a recipe belongs_to a user. With setting this up I was allowed access to all of the ActiveRecord methods. I also connected my data with a foreign key of user_id

You can run this app by running 
-bundle install
-bundle exec rake server

You can test out different ways of manipulating the data by running 
-rake console 
Here you will have access to the CRUD actions that were built in the application_controller.rb file. You can test things such as

Recipe.create(title:"example", from:"example", category:"example", notes:"example")

or 

recipe = Recipe.last 
recipe.destroy

FRONTEND 
You can get the frontend of this app running by 
-npm install
-npm start

Here you will see all of the functionality of the GET request to display the recipes, the POST request to add a new recipe, and a DELETE request to delete a recipe. 

All of these are connected to the server by making all of the fetch requests to this address.

'http://localhost:9292/recipes'

Thank you for reading. I hope you enjoyed my app!

A link to my blog about this app can be found at this address

https://medium.com/@shay2442/my-recipe-app-9af1c9d2e0f3

And the link for the frontend React repository can be found at the following link

https://github.com/shay2442/recipe

