class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        user = User.all
        render json: user
    end 

     def create
        # debugger
        user = User.new(params.require(:user).permit(:name, :email))
        debugger

        if user.save
            render json: params
        else
            render json: user.errors.full_messages, status: 422
        end
     end

     def show
        user = User.find_by(id: params[:id])

        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: 422
        end
     end

     def update
       user = User.find_by(id: params[:id])
       
       if user.save && user.update(params.require(:user).permit(:name, :email)) 
          render(json: user) 
         else 
            render(json: user.errors.full_messages,status: 422)
        end
     end

     def destroy
         user = User.find_by(id: params[:id])
          
         user.destroy

         return user
     end
end