class PostsController < ApplicationController
  before_action :set_post, only: [:show]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to posts_path
	end

private

	def post_params
		params.require(:post).permit(:image, :caption)
	end

	def set_post
		@post = Post.find(params[:id])
	end

end
