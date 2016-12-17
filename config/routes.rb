Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings, only: [ :index ]
  resources :rooms do
    resources :bookings, only: [ :show, :new, :create, :edit, :update, :destroy ]
  end
end
