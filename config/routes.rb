Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  resources :bus_companies
  resources :vehicles
  resources :travels
  resources :events
  resources :students
  resources :drivers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
