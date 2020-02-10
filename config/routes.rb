Rails.application.routes.draw do
  
  root 'users#index'
  get  '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    resources :s_favorites
  end
  
  resources :users do
    resources :l_favorites
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
