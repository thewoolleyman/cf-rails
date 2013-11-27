ActionController::Routing::Routes.draw do |map|
  map.resources :dongles
  map.root :controller => "dongles"
end
