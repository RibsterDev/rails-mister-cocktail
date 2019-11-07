Rails.application.routes.draw do
  resources :cocktails
    # resources :cocktails do
    # resources :doses, only: [:create, :new]
  resources :doses
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
