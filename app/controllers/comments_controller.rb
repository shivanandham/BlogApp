class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@blog_post = BlogPost.find(params[:blog_post_id])
		@comment = @blog_post.comments.create(params[:comment].permit(:comment))
		@comment.email = current_user.email
    	@comment.save!
		redirect_to blog_post_path(@blog_post)
	end
end
