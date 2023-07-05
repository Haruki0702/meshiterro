Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  devise_for :users
  resources :users, only: [:show,:edit]
  root to: "homes#top"
  get  'homes/about', to: 'homes#about',as: :about
  delete "post_images/:id" => "post_images#destroy", as: "destroy_image"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
