Rails.application.routes.draw do

get '/' => 'site#home'
# get 'users/productid'  => 'products#new', as: new_user_products_path

resources :users, only: [:show, :destroy, :create, ] do #shown in user controller
  resources :products, only: [:index, :new, :create, :destroy]

end


end



