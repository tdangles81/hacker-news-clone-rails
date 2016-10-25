Rails.application.routes.draw do
  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/destroy'

  get 'posts/index'

  get 'posts/new'

  post 'posts/new'

  get 'posts/show'

  get 'posts/edit'

  put 'posts/update'

  delete 'posts/destroy'

  get 'users/index'

  get 'users/new'

  post 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
