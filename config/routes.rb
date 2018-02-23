Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :events
    resources :users
    resources :departments
    resources :banners
    root to: "events#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'events', to: 'pages#event'
  get 'workers', to: 'pages#worker'
end
