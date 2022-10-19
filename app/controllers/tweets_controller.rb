class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.all
  end
  
  def new 
    @tweets = Tweet.new
  end
  
  def create
    #@users = User.all
    
    #id = User.find_by(uid: session[:login_uid])
    
    
    #@tweets = Tweet.new(message: params[:tweet][:message],user_id: id.id)
    @tweets = Tweet.new(message: params[:tweet][:message],user_id: current_user.id)
    if @tweets.save
        redirect_to '/'
    else
        render 'new'
    end
  end
  
  def destroy
    b = Tweet.find(params[:id])
    b.destroy
    redirect_to root_path
  end

end