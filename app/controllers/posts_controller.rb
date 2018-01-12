class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		# passing the id from the url
		@post = Post.find(params[:id])
	end

	def new

	end

	def create
		#render plain: params[:post].inspect
		#Post represents the model.
		@post = Post.new(post_params)

		@post.save
		#load the show view
		redirect_to @post
	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end
end
