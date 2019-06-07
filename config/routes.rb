Rails.application.routes.draw do
  resources :stat_blocks, only: [:index]
  resources :yeets, only: [:index]
    # post 'authenticate', to: 'authentication#authenticate'
end
