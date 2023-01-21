Rails.application.routes.draw do
  get 'game_words/input'
  get 'game_words/result'
  post '/result', to: 'game_words#result'
  get 'game_words/progress'
  devise_for :users
  get 'static_pages/landing_page'
  get 'dashboard', to: 'game_words#input'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#landing_page"
end
