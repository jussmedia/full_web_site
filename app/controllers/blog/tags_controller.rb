class Blog::TagsController < ApplicationController
  include Blog::TagsHelper

  before_action :current_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Blog::Tag.all
  end

  def show
    current_tag
  end

  def destroy
    current_tag.destroy
    respond_to do |format|
      format.html { redirect_to blog_tags_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
