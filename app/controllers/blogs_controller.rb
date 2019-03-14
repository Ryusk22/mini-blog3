class BlogsController < ApplicationController

  def index
    @blogs = Blog.page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @blog = Blog.new
  end

  def create
    # binding.pry
    Blog.create(create_params)
    redirect_to root_path
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.user_id == current_user.id
      @blog.update(update_params)
    end
    redirect_to "/"
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.user_id == current_user.id
    redirect_to "/"
  end

  private

  def create_params
    params.require(:blog).permit(:title, :content).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:blog).permit(:title, :content)
  end
end
