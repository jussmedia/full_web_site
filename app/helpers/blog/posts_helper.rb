module Blog::PostsHelper

  # Use callbacks to share common setup or constraints between actions.
  def current_post
    @post = Blog::Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:blog_post).permit(:title, :body, :published_by, :published, :tag_list)
  end

end
