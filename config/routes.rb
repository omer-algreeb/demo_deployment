Rails.application.routes.draw do
  root to: 'hellos#index'
  resources :hellos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
