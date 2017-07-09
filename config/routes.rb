Rails.application.routes.draw do
  
  resources :posts
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/show/:id', to: 'static_pages#show', as: 'show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
