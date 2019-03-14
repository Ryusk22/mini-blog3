Rails.application.routes.draw do
  mount Leather::Engine => '/'
  devise_for :users
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  resources :blogs
  resources :users, only: [:edit, :update] do
    get 'page/:page', :action => :index, :on => :collection
  end
end
