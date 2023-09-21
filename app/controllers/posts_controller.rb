class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    
  end

  def create
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post     
    else
      render action: 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
