class StaticPagesController < ApplicationController
  
  
  	before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def home
    @posts = Post.most_recent
    @users = User.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end


  def help
  end

  def about
  end

  def contact
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    
end
