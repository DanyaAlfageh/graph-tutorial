Rails.application.routes.draw do
  get 'calendar/index'
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'auth/signin'

  # Add route for OmniAuth callback
  match '/auth/:provider/callback', to: 'auth#callback', via: [:get, :post]

  get 'auth/signout'


end
