Rails.application.routes.draw do

  root to: 'bookings#index', as: 'calendar'
  get '/bookings/new', to: 'bookings#new', as: 'bookings'
  post '/bookings/new', to: 'bookings#create'

  get 'bookings/submitted', to: 'bookings#submitted', as: 'bookings_submitted'

  get '/admin', to: 'sessions#login', as: 'login'
  post '/admin', to: 'sessions#create', as: 'login_confirm'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  get '/admin/bookings', to: 'admin#confirm_booking', as: 'booking'
  get '/admin/upcoming_events', to: 'admin#upcoming_events', as: 'upcoming_events'
  post '/admin/bookings/:id', to: 'admin#confirm_event', as: 'confirm_event'
  delete '/admin/bookings/:id', to: 'admin#destroy_event', as: 'destroy_event'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
