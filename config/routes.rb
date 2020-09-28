Rails.application.routes.draw do
  comfy_route :cms_admin, path: "/admin"
  # Ensure that this route is defined last
  comfy_route :cms, path: "/"
  root to: 'hellos#index'
  resources :hellos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
