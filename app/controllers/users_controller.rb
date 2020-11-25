class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @name = @user.name
        @prototypes = current_user.prototypes
    end
end
