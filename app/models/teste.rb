rails generate model Review content:text restaurant:references
rails db:migrate

rails g model Restaurant name:string rating:integer





rails g model Cocktail  name:string
rails g model Ingredient  name:string

rails generate model Dose description:string cocktail:references ingredient:references