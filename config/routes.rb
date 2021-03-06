XirsysRails::Application.routes.draw do
  root :to => 'demos#new'
  
  resources :xirsys, defaults: {format: :json} do  
    collection do
      get  'getIceServers'
      post 'getIceServers'
      get  'getToken'
      post 'getToken'
      get  'addRoom'
      post 'addRoom'
      get  'addApplication'
      post 'addApplication'
      get  'addDomain'
      post 'addDomain'
    end
  end
  
  resources :demos, :path => '/' do  
    collection do
           
      # Simple tests
      get '/get_token_test' => 'demos#get_token_test'
      get '/get_ice_servers_test' => 'demos#get_ice_servers_test'
      get '/add_room_test' => 'demos#add_room_test'
      get '/add_application_test' => 'demos#add_application_test'
      get '/add_domain_test' => 'demos#add_domain_test'
      get '/join_room_test' => 'demos#join_room_test'
      
      # Video chat demos
      get '/one_to_one_video' => 'demos#one_to_one_video'
      get '/many_to_many_video' => 'demos#many_to_many_video'
      
      # Text chat demos
      get '/one_to_one_text' => 'demos#one_to_one_text'
      get '/many_to_many_text' => 'demos#many_to_many_text'
      
      # Multifunctional demos
      get '/kitchen_sink' => 'demos#kitchen_sink'
    end
  end

end
