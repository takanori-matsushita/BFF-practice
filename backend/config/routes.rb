Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root "static_pages#home"
      get 'static_pages/home'
      get 'static_pages/help'
      get 'static_pages/about'
      get 'static_pages/contact'
    end
  end
end
