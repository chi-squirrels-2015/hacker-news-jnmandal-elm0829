class PostsController < ApplicationController

  def index
    @posts = Post.order(:created_at).limit(20)
  end

end
