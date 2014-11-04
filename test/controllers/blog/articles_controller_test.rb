require "test_helper"

describe Blog::ArticlesController do

  let(:blog_article) { blog_articles :one }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_articles)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates blog_article" do
    assert_difference('Blog::Article.count') do
      post :create, blog_article: { body: blog_article.body, published: blog_article.published, title: blog_article.title }
    end

    assert_redirected_to blog_article_path(assigns(:blog_article))
  end

  it "shows blog_article" do
    get :show, id: blog_article
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: blog_article
    assert_response :success
  end

  it "updates blog_article" do
    put :update, id: blog_article, blog_article: { body: blog_article.body, published: blog_article.published, title: blog_article.title }
    assert_redirected_to blog_article_path(assigns(:blog_article))
  end

  it "destroys blog_article" do
    assert_difference('Blog::Article.count', -1) do
      delete :destroy, id: blog_article
    end

    assert_redirected_to blog_articles_path
  end

end
