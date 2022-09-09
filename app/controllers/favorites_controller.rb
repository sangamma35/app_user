class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(post: Post.find(params[:post]), user: current_user)
    if favorite == []
      Favorite.create(post: Post.find(params[:post]), user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
  def show
    @favourite_exists = Favorite.where(post: @post, user: current_user) == [] ? false : true
  end
end

