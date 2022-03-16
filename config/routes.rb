Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index', to: 'home#index'
  resources :notes
  #By using resources we can benefit from using all of the controller's seven actions (index, show, new, etc..)
	resources :meetings
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  	# Defines the root path route ("/")
  	# root "articles#notes"
  #
end
