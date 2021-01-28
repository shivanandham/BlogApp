class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@blog_post = BlogPost.find(params[:blog_post_id])
		@user = User.find(current_user.id)		
		@comment = @blog_post.comments.new(params[:comment].permit(:comment))
		@comment.user_id = @user.id
		@comment.save!
		#@comment_user.save!
		redirect_to blog_post_path(@blog_post)
	end
end
