Rails.application.routes.draw do
  get 'home/index'
  get "bienvenida", to: "home#index"
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  get 'articles/:id', to: 'articles#show'
  get 'articles/:id/edit', to: 'articles#edit'
  patch 'articles/:id', to: 'articles#update', as: :article
  delete 'articles/:id', to: 'articles#destroy'
  root to: 'articles#index'
end
