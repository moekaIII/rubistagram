class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorite = @user.favorites
  end
  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to pictures_path, notice: "#{favorite.picture.user.name}さんの写真をお気に入り登録したよ！"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to pictures_path, notice: "#{favorite.picture.user.name}さんの写真をお気に入り解除したよ！"
  end

end
