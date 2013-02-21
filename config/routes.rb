RorTemplate::Application.routes.draw do
  
  
  resource :dashboard
  
  resources :posts do
  	collection do
  		get 'recentposts'
  	end
  end
  
  #namespace :api , defaults: {format: 'json'} do 
  namespace :api  do 
  	resources :feeds

    resources :posts	
  end

  match 'home/recentposts'

  devise_for :users
  root :to => 'home#index'

  
end
