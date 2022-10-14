Rails.application.routes.draw do
  #get 'movies/Index'
  #get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
  # get "/movies", to: "movies#index"
  #get "/movies", to: "movies#Index"
  
  resources :movies do
    get '/page/:page', action: :index, on: :collection

  end

end
