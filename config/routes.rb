HandsomeHotel::Application.routes.draw do
  resources :hotels, :only => [:show, :new, :create, :index]
  root :to => "hotels#index"
  get 'help' => 'static_pages#help'
  devise_for :users
end
