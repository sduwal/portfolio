Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_controller#index'
  # get "/users" => "user_controller#index" 
  get "/photos" => "photo#photo"
end