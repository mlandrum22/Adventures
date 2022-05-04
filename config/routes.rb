Rails.application.routes.draw do
  get 'restaurants' => 'eats#index', as: 'eats'
  get 'restaurants/new' => 'eats#new', as: 'new_eat'
  #get 'restaurants/:id' => 'eats#show' as: 'restaurant'
  #get 'restaurants/edit':id
 
  resources :adventures
  resources :eats
  root 'home#index'

  get 'about' => 'home#about', as: 'about'

end
