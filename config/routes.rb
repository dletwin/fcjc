Fcjc::Application.routes.draw do
  resources :newsletters, except: [:edit, :update]
  resources :galleries
  resources :images

  root "static_pages#index"
  get "/index" => "static_pages#index", as: "index"
  get "/about" => "static_pages#about", as: "about"
  get "/mission" => "static_pages#mission", as: "mission"
  get "/contact_us" => "static_pages#contact_us", as: "contact_us"
  get "/links" => "static_pages#links", as: "links"
  get "/prayers" => "static_pages#prayers", as: "prayers"
  get "/youth" => "static_pages#youth", as: "youth"
  get "/fcjc_pray" => "static_pages#fcjc_pray", as: "fcjc_pray"
  get "/cp_eng" => "static_pages#cp_eng", as: "cp_eng"
  get "/cp_lat" => "static_pages#cp_lat", as: "cp_lat"
  get "/sacrament" => "static_pages#sacrament", as: "sacrament"
  get "/pledge" => "static_pages#pledge", as: "pledge"
  get "/calender" => "static_pages#calender", as: "calender"
  get "/prayer_gathering" => "static_pages#prayer_gathering", as: "prayer_gathering"

end
