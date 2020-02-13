class CommentsController < ApplicationController
  
  
  def create
    @board = Board.find(params[:board_id])
    @comment = Comment.new(comment_params)
    @comment.board = @board
    @comment.user_id = current_user.id
  
    if @comment.save
      redirect_to board_url(@board)
    else
      flash.now[:danger] = "投稿失敗しました"
    end
  end
  
  def destroy
  end
  
private
  def comment_params
    params.require(:comment).permit(:content, :board_id, :user_id)
  end
end
