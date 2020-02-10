class SFavoritesController < ApplicationController
  
  def create
    sfavorite = SFavorite.new
    sfavorite.user_id = params[:user_id]
    sfavorite.site_id = params[:site_id]
    if sfavorite.save
        redirect_to edit_user_path(id: params[:user_id]),method: :get 
        flash.now[:success] = "登録しました"
    else
        redirect_to edit_user_path(id: params[:user_id]),method: :get 
        flash.now[:danger] = "登録失敗しました"
    end
    
  end
  
  
  
  
  

  
  
end
