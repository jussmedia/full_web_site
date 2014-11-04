module Blog::TagsHelper

  # Use callbacks to share common setup or constraints between actions.
  def current_tag
    @tag = Blog::Tag.find(params[:id])
  end

end
