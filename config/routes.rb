Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'

  # localhost:3000/about: pages controller and about view
  get 'about' => 'pages#about', as: 'about'

  #creates new/update/destroy/edit... post automatically. list in GITbash -> 'rake routes'
  resources :posts do
  	resources :comments
  end
end
