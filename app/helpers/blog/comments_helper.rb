module Blog::CommentsHelper

  def comment_params
    params.require(:blog_comment).permit(:author_name, :body)
  end
end
