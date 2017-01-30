Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations', :passwords => "users/passwords",  sessions: 'users/sessions' }


  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :destinations, only: [:index, :show, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update, :create, :new]

  # get 'social_media/facebook'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
