class AddBlogPostIdToComments < ActiveRecord::Migration[6.1]
  def change
  	add_column :comments, :blog_post_id, :integer
  end
end
