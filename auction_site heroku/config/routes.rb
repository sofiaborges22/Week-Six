Rails.application.routes.draw do

  get 'bids/new'

  get 'bids/create'

resources :users, only: [:show, :new, :create, :destroy] do#only specifies the methods in the controller, because if not it would also create something like index, which we don't need in this controller
	resources :products, except: [:edit, :update]
end

get '/products/:id/bids/new', to: 'bids#new'
post '/products/:id/bids', to: 'bids#create', as: :product_bids
get '/products/:id/bids', to: 'bids#index', as: :product_bids_all


end

#undefined method 'products_bids_path' error => wants that our create action has a products_bids_path