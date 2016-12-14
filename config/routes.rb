Rails.application.routes.draw do
 get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'

get 'signup' => 'users#new'
get 'users' => 'users#show'
post 'users' => 'users#create'

get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'

patch 'edit/:id', to: 'users#edit'
  get 'edit' => 'users#edit'
  put 'update' => 'users#update'
  get 'users/:id/edit' => 'users#edit'
  #post 'users/:id/update' => 'users#update'
  get 'user' => 'users#edit'
end

