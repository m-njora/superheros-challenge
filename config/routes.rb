Rails.application.routes.draw do
  # get 'powers/index'
  # get 'powers/show'
  # get 'powers/change'
  # get 'heroes/index'
  # get 'heroes/show'
  # get 'hero/index'
  # get 'hero/show'
  # get 'heros/index'

  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]

end
