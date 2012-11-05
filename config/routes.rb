Freak::Application.routes.draw do

  root :to => 'pages#home'
  
  get "pages/home"
  get "pages/restaurants"
  get "pages/activities"

  post '/login' => 'pages#login'
  post '/restaurants' => 'pages#create_restaurant'
  post '/activities' => 'pages#create_activity'
end
