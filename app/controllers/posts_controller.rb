class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

  def new
  end

  def create
  @post = Post.create(content: params[:content])
  respond_to do |format|
    format.js  # create.js.erb を探しにいく
  end
end

end
