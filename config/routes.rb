Rails.application.routes.draw do
  # get 'heroes/index'
  # get 'heroes/show'
  # get 'hero/index'
  # get 'hero/show'
  # get 'heros/index'

  resources :heroes, only: [:index, :show]
end
