Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'users#profile'
  root to: 'users#profile'
  resources :users do
  	resources :estates
  end
   get '/estates' => 'estates#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
