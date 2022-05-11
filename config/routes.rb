Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, :passengers
  # Defines the root path route ("/")
  root "flights#index"
  get "show/booking/:id" => "bookings#show", as: "show_booking"
end
