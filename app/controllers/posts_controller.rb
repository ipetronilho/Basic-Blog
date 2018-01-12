class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		# passing the id from the url
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		#render plain: params[:post].inspect
		#Post represents the model.
		@post = Post.new(post_params)

		#load the show view
		if (@post.save)
			redirect_to @post
		else
			render 'new'
		end
	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end
end
