class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    topic = Topic.find(params[:topic_id])
    post = topic.posts.create(params[:post])
    redirect_to topic
  end
  
  def destroy
    topic = Topic.find(params[:topic_id])
    post = topic.posts.find(params[:id])
    post.destroy
    redirect_to topic
  end
end
