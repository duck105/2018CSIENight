Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]                                          
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users' => 'devise/registrations#update', :as => 'user_registration'            
  end
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :events
    resources :users
    resources :departments
    resources :banners
    resources :sponsors
    root to: "events#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  resources :events, only: [:index]
  resources :workers, only: [:index]
  resources :sponsors, only: [:index]

  get 'search', to: "search#index", as: "search"
end
