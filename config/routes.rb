Fcjc::Application.routes.draw do
  resources :newsletters, except: [:edit, :update]

  get "static_pages/index"
  get "/about" => "static_pages#about", as: "about"
  get "/mission" => "static_pages#mission", as: "mission"
  # If you list the "as" portion of the routes, you can refer
  # to them by name in your code. ie link_to "About"
  # You will still need a StaticPagesController with actions defined
  # for all these pages...
   #get "/about", "static_pages#about" as: "about"


  get "static_pages/contact_us"
  get "static_pages/gallery"
  get "static_pages/links"
  get "static_pages/prayers"
  get "static_pages/youth"
  get "static_pages/fcjc_pray"
  get "static_pages/cp_eng"
  get "static_pages/cp_lat"
  get "static_pages/sacrament"
  get "static_pages/pledge"
  get "static_pages/calender"
  get "static_pages/prayer_gathering"

  root "static_pages#index"

end
