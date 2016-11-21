Rails.application.routes.draw do
  get 'images/index'

  get 'images/show'

  get 'images/new'

  get 'images/edit'

  get 'images/delete'

  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
