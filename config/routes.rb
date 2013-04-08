Appdomumsite::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  resources :microblogs, only: [:create, :destroy]
  resources :apps

  root :to => "home#index"
  match '/mobile_apps' , to: 'home#mobile_apps'
  match '/about',   to: 'home#about'
  match '/contact', to: 'home#contact'
  devise_for :users
  resources :users
end