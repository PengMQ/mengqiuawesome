class BlogsController < ApplicationController

  def list
    @latest_blogs = Blog.order("created_at DESC")
    render :list
  end
 def new
   render :new
 end

  def submit_blog
    blog = Blog.create title:params[:title], body:params[:body]
    redirect_to "/blogs/list"
  end
  def view
    @current_path = request.fullpath
    @current_blog = Blog.find params[:blog_id]
    render :view
  end

end
