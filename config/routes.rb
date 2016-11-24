Rails.application.routes.draw do
  devise_for :users
  get 'upload' => 'images#new', :as => 'upload'

  get 'images/show'

  get 'images/new'

  get 'images/edit'

  get 'images/delete'

  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/delete'
  
  resources :images, :categories
  
  root 'images#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
