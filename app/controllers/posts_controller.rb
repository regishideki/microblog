class PostsController < ApplicationController

  def show
    @post = Post.find_by(slug_title: params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post created"
      redirect_to root_url
    else
      @posts = Post.all
      render "static_pages/home"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post updated"
      redirect_to root_url
    else
       render "posts/edit"
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Post deleted"
    redirect_to request.referrer || root
  end
  
  private 
    def post_params
      params.require(:post).permit(:title, :message, :slug_title)
    end
end
