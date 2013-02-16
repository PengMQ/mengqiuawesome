class BlogsController < ApplicationController

  def list
    @latest_blogs = Blog.order("created_at DESC")
    #@latest_blogs = Blog.all
    render :list
  end
 def edit
   render :edit
 end

  def submit_blog
    blog = Blog.create title:params[:title], body:params[:body]
    redirect_to "/blogs/list"
  end

end
