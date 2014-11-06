class Blog::ArticlesController < ApplicationController
  include Blog::ArticlesHelper

  before_action :current_article, only: [:show, :edit, :update, :destroy]

  # GET /blog/articles
  # GET /blog/articles.json
  def index
    @articles = Blog::Article.all
  end

  # GET /blog/articles/1
  # GET /blog/articles/1.json
  def show
    @comment = Blog::Comment.new
    @comment.article_id = @article.id
  end

  # GET /blog/articles/new
  def new
    @article = Blog::Article.new
  end

  # GET /blog/articles/1/edit
  def edit
  end

  # POST /blog/articles
  # POST /blog/articles.json
  def create
    @article = Blog::Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/articles/1
  # PATCH/PUT /blog/articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/articles/1
  # DELETE /blog/articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to blog_articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
