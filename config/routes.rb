Rails.application.routes.draw do
  # resources :articles do
  #   resources :comments, only: [:index, :create, :new]
  # end
  # resources :comments, only: [:show, :update, :edit, :destroy]
  resources :articles do
    resources :comments, shallow: true, except: [:index, :new, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
