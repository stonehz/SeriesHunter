SeriesHunter::Application.routes.draw do
  resources :shows do
    post "rss", to: "shows#rss" ,on: :collection, as: :send_rss_for
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end