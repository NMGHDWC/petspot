Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'books#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'show' => 'books#index'
  get 'edit' => 'books#edit'
  get 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update'
end
