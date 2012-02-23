class PostsController < ApplicationController
  before_filter :login_required
  
  def new
    @post = Post.new
  end
  
  def create
    topic = Topic.find(params[:topic_id])
    post = topic.posts.new(params[:post])
    post.author = current_user.name
    post.user = current_user
    post.save
    redirect_to topic
  end
  
  def destroy
    topic = Topic.find(params[:topic_id])
    post = topic.posts.find(params[:id])
    post.destroy
    redirect_to topic
  end
end
