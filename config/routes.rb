Rails.application.routes.draw do
  namespace :admin do
    resources :events

    root to: "events#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'events', to: 'pages#event'
end
