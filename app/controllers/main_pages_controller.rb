class MainPagesController < ApplicationController
skip_before_action :verify_authenticity_token

  def home
  end

  def help
  end

  def about
  end

  def client
  end

  def create
  	# @interviewer = 
  end

  def clientpost
	  @client = params[:client]
	  # params[:id] = @client[:name]
	  #if (@client[:name]=='admin' && @client[:password]=='654321') ||
     #  (@client[:email]=='admin@email.com' && @client[:password]=='654321')
      # @client[:name] = "admin" 
       #@client[:email] = "admin@email.com" 
     if @client[:name].blank? || @client[:email].blank? || @client[:password].blank?
      flash.now[:error] = "INCORRECT"
      render 'home' and return
	    else
       render 'client' #and return
	     #render text: 'name - '+@client[:name]+' ,   email - '+@client[:email] and return
	  #else 
	   # flash.now[:error] = "You are not admin or interviewer"
     # render 'home' # render text: 'INCORRECT'
	  end
  end

  def login
  	 
  end

end
