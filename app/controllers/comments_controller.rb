class CommentsController < ApplicationController
	def create
		@post = Post.find params[:post_id]
		@comment = @post.comments.new params[:comment]
		@comment.user_id = current_user.id
		@comment.save

		respond_to do |format|
    		format.html { redirect_to @post }
    		format.js # create.js.erb
  		end
	end
end
