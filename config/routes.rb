Rails.application.routes.draw do
  resources :yeets
    post 'authenticate', to: 'authentication#authenticate'
end
