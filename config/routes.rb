Rails.application.routes.draw do
  get 'books/index'
  get 'books/create'
  devise_for :users
  root 'books#index'
  resources :articles do
    resources :comments
    resources :likes
  end
  resources :books do
    resources :articles do
      resources :comments
      resources :likes
    end
  end
end
