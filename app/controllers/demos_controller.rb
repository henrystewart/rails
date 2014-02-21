class DemosController < ApplicationController
  
  # Generates a random username for each demo
  before_action :generate_random_username
  
  def new
  end

  def contact
  end

  def get_ice_servers_test
    if params[:room] && params[:username]
      redirect_to getIceServers_xirsys_path(params)
    end
  end
  
  def get_token_test
    if params[:room] && params[:username]
      redirect_to getToken_xirsys_path(params)
    end
  end
  
  def add_room_test
    if params[:room]
      redirect_to addRoom_xirsys_path(params)
    end
  end
  
  def join_room_test
  end
  
  def one_to_one_video
  end
    
  def many_to_many_video
  end
  
  def one_to_one_text
  end
  
  def many_to_many_text
  end
  
  def kitchen_sink
  end

  private
  
  # Generates a random username for each demo
  def generate_random_username
    @username = (0...5).map { (65 + rand(26)).chr }.join.downcase
  end

end