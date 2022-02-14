Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/show'
  get 'users/new'
  post 'users/create'
  post 'users/edit'
  post 'users/update'
  delete 'users/destroy'
end
