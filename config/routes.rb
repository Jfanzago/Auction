Rails.application.routes.draw do

  devise_for :users
  get '/' => 'site#home'

  resources :users, only: [:show, :create, :destroy, :new, :index] do
    resources :products, only: [:index, :show, :create, :destroy, :new]
  end

  get '/products' => 'products#index'

end



