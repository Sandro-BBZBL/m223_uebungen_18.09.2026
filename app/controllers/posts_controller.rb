class PostsController < ApplicationController
  allow_unauthenticated_access only: %i[index show]
  before_action :resume_session, only: %i[index show]
  before_action :set_visible_post, only: :show
  before_action :set_post, only: %i[edit update destroy]
  def index
    @posts = Post.visible_to(Current.user).order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Current.user.posts.new(post_params)
    if @post.save
      redirect_to @post, notice: "Beitrag erstellt."
    else
      render :new, status: 422
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    if @post.update(post_params)
      redirect_to @post, notice: "Beitrag gespeichert."
    else
      render :edit, status: 422
    end
  end

  def destroy
    authorize @post
    @post.destroy!
    redirect_to posts_path, status: :see_other, notice: "Beitrag gelöscht."
  end

  private

  def set_visible_post
    @post = Post.visible_to(Current.user).find(params[:id])
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :published_at)
  end
end
