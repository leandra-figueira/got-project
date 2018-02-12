Rails.application.routes.draw do
  resources :locations
  resources :books
  resources :characters
  resources :episodes
  resources :seasons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
