HandsomeHotel::Application.routes.draw do
  get 'help' => 'static_pages#help'
  devise_for :users
end
