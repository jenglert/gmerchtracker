ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session


  map.connect '/callbacks', :controller => 'callbacks', :action => 'index'
  
  map.root :controller => 'homepage', :action => 'index'
  
  map.connect '*path', :controller => 'callbacks', :action => 'index' 
  
end
