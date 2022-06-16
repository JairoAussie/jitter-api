Rails.application.routes.draw do
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/auth' do
    post "/signup", to: "users#create"
    post "/signin", to: "users#sign_in"
  end
end
