class PostsController < ApplicationController
  before_action :logged_in_user
  def index
    @post = current_user.posts.all
  end

  def new
    @post = current_user.posts.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    post = current_user.posts.find(params[:id])
    if (post.update(post_params))
      redirect_to post
    else
      redirect_to edit_post_path(post)
    end

  end

  def destroy
    @post = current_user.posts.find(params[:id])
    if @post
      @post.destroy
      flash[:success] = "Post has been deleted"
    else
      flash[:alert] = "Error"
    end
    redirect_to posts_path
  end

  def create
    # render plain: params[:post].inspect
    @post = current_user.posts.new(post_params) # передаємо метод, який знизу створений

    if (@post.save)
      redirect_to @post
    else
      render 'new'
    end
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
