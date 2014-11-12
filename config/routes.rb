HandsomeHotel::Application.routes.draw do
  get "static_pages/help"
  devise_for :users
end
