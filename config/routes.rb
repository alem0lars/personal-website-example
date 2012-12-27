Personalwebsiteexample::Application.routes.draw do

  resources :presentation_items, :only => [ :new, :edit, :create, :update, :destroy ]

  devise_for :users

  root :to => 'home#show'

  match '/home' => 'home#show', :as => 'home'
  match '/curriculum' => 'curriculum#show', :as => 'curriculum'

end
