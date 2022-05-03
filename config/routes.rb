Rails.application.routes.draw do
  resources :adventures
  resources :eats
  root 'home#index'

  get 'about' => 'home#about', as: 'about'
end
