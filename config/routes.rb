ActionController::Routing::Routes.draw do |map|

  map.connect '/callbacks', :controller => 'callbacks', :action => 'index'
  
end
