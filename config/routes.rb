Rails.application.routes.draw do
  devise_for :users
  get 'charges/new'

  get 'charges/create'

   resources :charges, only: [:new, :create]
   get 'thanks', to: 'charges#thanks', as: 'thanks'

  # devise_for :users
  # resources :posts
  # root to: 'posts#index'
end