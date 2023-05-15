Rails.application.routes.draw do
  resources :marcas
  resources :veiculos
  resources :estados
  resources :servicos
  resources :oficinas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
