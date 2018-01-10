Rails.application.routes.draw do
  get  'users/new', to: 'users#new', as: 'new_user'
  post 'users/create', to: 'users#create', as: 'create_user'
  get 'users/:id', to: 'users#show', as: 'user'
end
