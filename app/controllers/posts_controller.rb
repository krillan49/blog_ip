class PostsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "123456", except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    
  end

  def create
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

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render action: 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
