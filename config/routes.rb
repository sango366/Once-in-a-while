Rails.application.routes.draw do
  get 'relationships/follower'
  get 'relationships/followed'
  root 'starts#top'
  devise_for :users
  resources :users do
  resource :relationships, only: [:create, :destroy]
  get 'follows' => 'relationships#follower', as: 'follows'
  get 'followers' => 'relationships#followed', as: 'followers'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
