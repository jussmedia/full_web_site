require "test_helper"

describe Blog::CommentsController do
  let(:blog_comment) { blog_comments :one }

  it "gets index" do
    get :index
    assert_response :failure
    assert_not_nil assigns(:blog_posts)
  end

  it "gets new" do
    get :new
    assert_response :failure
  end

  it "creates blog_post" do
    name = Faker::Name.name
    body = Faker::Lorem.paragraph
    assert_difference('Blog::Comment.count') do
      post :create, blog_comment: { author_name: name, body: body }
    end

    assert_redirected_to blog_post_path(assigns(:blog_comment.post))
  end

end
