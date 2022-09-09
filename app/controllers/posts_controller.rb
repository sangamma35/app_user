class PostsController < ApplicationController
    #before_action :authenticate_user!, except: [:index]  

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @favorite_exists = Favorite.where(post: @post, user: current_user) == [] ? false : true
    end
    
    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
    @post = Post.new(params.require(:post).permit(:title, :description))
    @post.user = User.first
    if @post.save
        flash[:notice] = "Post was created successfully."
        redirect_to @post
      else
        render 'new'
      end
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(params.require(:post).permit(:title, :description))
          flash[:notice] = "Post was updated successfully."
          redirect_to @post
        else
          render 'edit'
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

end