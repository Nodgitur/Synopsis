Rails.application.routes.draw do

  #By using resources we can benefit from using all of the controller's seven actions (index, show, new, etc..)
	resources :meetings
  get 'home', to: 'home#index'
  get 'notes', to: 'notes#index'
  root to: "home#index"
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  	# Defines the root path route ("/")
  	# root "articles#index"
  #
end
