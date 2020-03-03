Rails.application.routes.draw do
  resources :bookings

  root to: 'bookings#index'
  get '/bookings/new', to: 'bookings#new', as: 'bookings'
  post '/bookings', to: 'bookings#create'

  get '/admin', to: 'admin#login', as: 'admin_login'
  post '/admin', to: 'admin#confirmed'
  get '/admin/bookings', to: 'admin#confirm_booking'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
