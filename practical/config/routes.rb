Rails.application.routes.draw do
    resource 'posts'
    resource 'profiles'
      get 'all_post' , to: 'posts#index'
     root 'dashboard#index'
     devise_for :users
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
