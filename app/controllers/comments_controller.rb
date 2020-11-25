class CommentsController < ApplicationController

      def create  
        @comment = Comment.new(prototype_params)
        if @comment.save
          redirect_to prototype_path(@comment.prototype)
        else
          @prototype = @comment.prototype
          @comments = @prototype.comments
          render "prototypes/show" # views/tweets/show.html.erbのファイルを参照しています。
        end
      end
    
    def show
    end
  
    private
    def prototype_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
    end

end
