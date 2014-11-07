class Blog::PostsController < Blog::BaseController
  include Blog::PostsHelper

  before_action :current_post, only: [:show, :edit, :update, :destroy]

  # GET /blog/posts
  # GET /blog/posts.json
  def index
    @posts = Blog::Post.all
  end

  # GET /blog/posts/1
  # GET /blog/posts/1.json
  def show
    @comment = Blog::Comment.new
    @comment.post_id = @post.id
  end

  # GET /blog/posts/new
  def new
    @post = Blog::Post.new
  end

  # GET /blog/posts/1/edit
  def edit
  end

  # POST /blog/posts
  # POST /blog/posts.json
  def create
    @post = Blog::Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/posts/1
  # PATCH/PUT /blog/posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/posts/1
  # DELETE /blog/posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to blog_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
