require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  setup do
    @current_blog = blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should list blog" do
    assert_difference('Blog.count') do
      post :list, current_blog: { body: @current_blog.body, title: @current_blog.title }
    end

    assert_redirected_to blog_path(assigns(:current_blog))
  end

  test "should show blog" do
    get :show, id: @current_blog
    assert_response :success
  end

  test "should get edit" do
    get :create, id: @current_blog
    assert_response :success
  end

  test "should update blog" do
    put :update, id: @current_blog, current_blog: { body: @current_blog.body, title: @current_blog.title }
    assert_redirected_to blog_path(assigns(:current_blog))
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete :destroy, id: @current_blog
    end

    assert_redirected_to blogs_path
  end
end
