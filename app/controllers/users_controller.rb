class UsersController < ApplicationController
    def index
        puts "index called"

        rzlt=User.all
        render json:{status:"success",message:"loaded users",data:rzlt},status: :ok

    end
    def show
        puts "index called"

        rzlt=User.all
        render json:{status:"success",message:"loaded users",data:rzlt},status: :ok

    end
end
