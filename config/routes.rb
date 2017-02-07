Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations', :passwords => "users/passwords",  sessions: 'users/sessions' }
  # mount ImageUploader::UploadEndpoint => "/images"

  root 'pages#home'
  get '/about-us' => 'pages#about_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :destinations, only: [:index, :show, :edit, :update] do
    resources :tours, only: [:index, :show]
  end



  # get 'social_media/facebook'
  resources :users, only: [:index, :show, :edit, :update, :create, :new] do
     resources :trips, only: [:index, :show, :new, :create, :delete]
    #  resources :conversations, only: [:index]
    #  resources :messages, only: [:index, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
