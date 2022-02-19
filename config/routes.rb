Rails.application.routes.draw do
  get 'users' => 'users#index'
 # get 'users/show' => 'users#show'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  post 'users/edit'
  post 'users/update'
  delete 'users/destroy'
  get 'users/:id' => 'users#show', as: :user
end
