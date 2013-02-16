class Blog < ActiveRecord::Base
  attr_accessible :body, :title

  #def self.latest_blogs
  #  @latest_blogs = Blog.order("created_at DESC")
  #end
end
