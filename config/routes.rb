Rails.application.routes.draw do
  get 'rooms/show'
  #rails 6では不要
  mount ActionCable.server => '/cable'

  get 'relationships/follower'
  get 'relationships/followed'
  #root 'starts#top'
  root 'rooms#show'
  devise_for :users
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
