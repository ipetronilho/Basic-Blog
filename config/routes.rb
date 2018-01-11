Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  # localhost:3000/about: pages controller and about view
  get 'about' => 'pages#about'
end
