Rails.application.routes.draw do

	#users
  get  'users/new', to: 'users#new', as: 'new_user'
  post 'users/create', to: 'users#create', as: 'create_user'
  get 'users/:id', to: 'users#show', as: 'user'

  #weddings
  get 'weddings/new', to: 'weddings#new', as: 'new_wedding'
  post 'weddings/create', to: 'weddings#create', as: 'create_wedding'
  get 'weddings/:id', to: 'weddings#show', at: 'wedding'
  
end
