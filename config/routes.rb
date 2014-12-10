HandsomeHotel::Application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :hotels, :only => [:show, :new, :create, :index] do
    resources :comments
  end
  resources :locations, :only => [:show, :new, :create, :index]
  root :to => "hotels#index"
  get 'help' => 'static_pages#help'
  get 'new' => 'hotels#new'
  devise_for :users
end
