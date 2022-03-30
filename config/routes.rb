Rails.application.routes.draw do
  # devise_scope :users do
  #   # root to: "users#new"
  # end
  get 'home/index', to: 'home#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :notes
  #By using resources we can benefit from using all of the controller's seven actions (index, show, new, etc..)
	resources :meetings
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  	# Defines the root path route ("/")
  	# root "articles#notes"
  #
  root to: "home#index"
end
