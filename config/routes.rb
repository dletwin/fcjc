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
end
