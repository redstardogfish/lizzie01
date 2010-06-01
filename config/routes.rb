ActionController::Routing::Routes.draw do |map|

  map.resources :testimonials
  map.resources :photos

  map.connect '', :controller => "main", :action => "index"
  map.connect 'elizabeth', :controller => "main", :action => "meetelizabeth" 
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
