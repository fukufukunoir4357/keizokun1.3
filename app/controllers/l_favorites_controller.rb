class LFavoritesController < ApplicationController
  
  def create
    lfavorite = LFavorite.new
    lfavorite.user_id = params[:user_id]
    lfavorite.language_id = params[:language_id]
    if lfavorite.save
        redirect_to edit_user_path(id: params[:user_id]), method: :get 
        flash.now[:success] = "登録しました"
    else
        redirect_to edit_user_path(id: params[:user_id]),method: :get 
        flash.now[:danger] = "登録失敗しました"
    end
  end
  
end
