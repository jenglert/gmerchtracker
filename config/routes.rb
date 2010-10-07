ActionController::Routing::Routes.draw do |map|

  map.connect '/callbacks', :controller => 'callbacks', :action => 'index'
  
  map.root :controller => 'homepage', :action => 'index'
  
  map.connect '*path', :controller => 'callbacks', :action => 'index' 
  
end
