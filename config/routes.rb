Rails.application.routes.draw do
  resources :stat_blocks
  resources :yeets
    # post 'authenticate', to: 'authentication#authenticate'
end
