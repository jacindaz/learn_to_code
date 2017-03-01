Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "resources#index"
  resources :resources, only: [:index, :new, :create, :show, :edit, :update] do
    collection { get :tags_autocomplete }
  end
end
