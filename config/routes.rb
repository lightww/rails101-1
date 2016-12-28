Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups do
    member do
      #get :action
      #put :action
      post :join
      post :quit
      #delete :action
    end
    resources :posts
  end

  namespace :account do
    resources :groups
  end

  root 'groups#index'
end
