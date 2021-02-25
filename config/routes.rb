Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

  #index
  get '/users', to: 'users#index'

  #create
  post '/users', to: 'users#create'

  #show
  get '/users/:id', to: 'users#show'

  #update
  patch '/users/:id', to: 'users#update'

  #destroy
  delete 'users/:id', to: 'users#destroy'

  #  #new
  #  get '/users/:id', to: 'users#new', as: 'new_user'

  #edit
  #  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'

  #update
  #  patch 'users/:id', to: 'users#update', as: 'put_update_user'

end
