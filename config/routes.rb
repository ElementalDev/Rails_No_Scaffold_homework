Rails.application.routes.draw do
  get 'authors/index'
  get 'authors/all'
  get 'authors/create'
  get 'authors/new'
  get 'authors/edit'
  get 'authors/update'
  get 'authors/delete'
  get 'authors/one'
  get 'books/index'
  get 'books/all'
  get 'books/create'
  get 'books/new'
  get 'books/edit'
  get 'books/update'
  get 'books/delete'
  get 'books/one'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
