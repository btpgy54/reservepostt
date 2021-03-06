class PostsController < ApplicationController

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :new
    end
  end
end

private

def post_params
  params.permit(:image, :title, :description, :date, :club_id)
end