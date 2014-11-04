class Blog::CommentsController < ApplicationController
  include Blog::CommentsHelper
  
  def create
    @comment = Blog::Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to blog_article_path(@comment.article)
  end

end
