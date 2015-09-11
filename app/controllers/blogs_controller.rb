class BlogsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
  def create
     Blog.create(create_params)
    redirect_to action: :index
  end
  
  private
  
  def create_params
    params.require(:blog).permit(:name,:content)
  end
end
