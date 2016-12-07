Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'

get 'signup' => 'users#new'
get 'users' => 'users#show'
post 'users' => 'users#create'
end
