Rails.application.routes.draw do
  resources :tweets do
    member do
      put "like", to: "tweets#upvote"
      put "dislike", to: "tweets#downvote"
    end
    #Directs to controller and upvote
  end
  devise_for :users
  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
