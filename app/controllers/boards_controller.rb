class BoardsController < ApplicationController
  
  def index
  
  end
  
  def show
    @board = Board.find(params[:id])
    @board = Board.includes(:comments).find(params[:id])
    @comment = Comment.new
    
  end
  
  

  
  
  
end
