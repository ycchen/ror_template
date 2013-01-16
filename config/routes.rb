RorTemplate::Application.routes.draw do
  
  resources :posts do
  	collection do
  		get 'recentposts'
  	end
  end
  
  match 'home/recentposts'

  devise_for :users
  root :to => 'home#index'

  
end
