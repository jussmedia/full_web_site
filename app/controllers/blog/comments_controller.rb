class Blog::CommentsController < Blog::BaseController
  include Blog::CommentsHelper

  def create
    @comment = Blog::Comment.new(comment_params)
    @comment.post_id = params[:post_id]

    @comment.save

    redirect_to blog_post_path(@comment.post)
  end

end
