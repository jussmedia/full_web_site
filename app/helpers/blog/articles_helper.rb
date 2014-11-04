module Blog::ArticlesHelper

  # Use callbacks to share common setup or constraints between actions.
  def article
    @article = Blog::Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:blog_article).permit(:title, :body, :published, :tag_list)
  end

end
