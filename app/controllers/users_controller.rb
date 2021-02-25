class UsersController < ApplicationController
     def index
      #   render plain: "I'm in the index action!"
      user = User.all

      render json: user
     end 

     def create 
         user = User.new(params.require(:user).permit(:name, :email))
         user.save!
         render json: user
     end

     def show
        render(json: params)
     end
end