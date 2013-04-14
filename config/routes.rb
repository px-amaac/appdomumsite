Appdomumsite::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  resources :microblogs, only: [:create, :destroy]
  resources :apps

  root :to => "home#index"
  match '/mobile_apps' , to: 'home#mobile_apps'
  match '/about',   to: 'home#about'
  match 'dispatch_email', to: 'home#dispatch_email', as: "dispatch_email", method: :post
  devise_for :users
  resources :users
end