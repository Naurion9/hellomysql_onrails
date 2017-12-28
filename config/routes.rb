Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'welcome/home'

  get 'libro/list'
  get 'libro/new'
  post 'libro/create'
  patch 'libro/update'
  get 'libro/show'
  get 'libro/edit'
  get 'libro/delete'

  get 'tema/list'
  get 'tema/show'
  get 'tema/new'
  get 'tema/edit'
  post 'tema/create'
  patch 'tema/update'
  get 'tema/delete'

  get 'autor/list'
  get 'autor/show'
  get 'autor/new'
  post 'autor/create'
  patch 'autor/update'
  get 'autor/edit'
  get 'autor/delete'

  root 'welcome#home'
end
