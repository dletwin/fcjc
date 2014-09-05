Fcjc::Application.routes.draw do

  root "static_pages#index"
  get "static_pages/index"
  get "static_pages/about"
  get "static_pages/mission"
  get "static_pages/contact_us"
  get "static_pages/gallery"
  get "static_pages/links"
  get "static_pages/prayers"
  get "static_pages/youth"
  get "static_pages/fcjc_pray"
  get "static_pages/cp_eng"
  get "static_pages/cp_lat"
  get "static_pages/sacrament"
  get "static_pages/family_matters"

end
