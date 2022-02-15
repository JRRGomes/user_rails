Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/show' => 'users#show'
  get 'users/:id' => 'users#show', as: :user
  get 'users/new'
  post 'users/create'
  post 'users/edit'
  post 'users/update'
  delete 'users/destroy'
end
