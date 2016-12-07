Rails.application.routes.draw do
 get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'

get 'signup' => 'users#new'
get 'users' => 'users#show'
post 'users' => 'users#create'

get 'login' => 'session#new'
post 'login' => 'session#create'
delete 'logout' => 'sessions#destroy'
end

