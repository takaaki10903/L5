class TopController < ApplicationController
    def main
        @tweets = Tweet.all
        if session[:login_uid]
            render "main"
        
        else
            render "login"
        end
    end
    #def login

        #if User.find_by(uid: params[:uid],pass: params[:pass])
            #session[:login_uid] = params[:uid]
            #redirect_to root_path
        
        #else
            #render 'error'
        #end
    #end
    
    def login
        user = User.find_by(uid: params[:uid])

        if user && BCrypt::Password.new(user.pass) == params[:pass]
            session[:login_uid] = params[:uid]
            redirect_to root_path
        
        else
            render 'error'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
    
    def rock
        @users = User.all
       render "users/rock" 
    end
end