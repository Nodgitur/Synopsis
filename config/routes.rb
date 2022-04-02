Rails.application.routes.draw do
  devise_for :users
  #By using resources we can benefit from using all of the controller's seven actions (index, show, new, etc..)
	resources :meetings
  get 'notes', to: 'notes#index'
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  	# Defines the root path route ("/")
  	# root "articles#index"
  #
  root to: "home#index"
end
