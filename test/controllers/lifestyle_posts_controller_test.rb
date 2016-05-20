require 'test_helper'

class LifestylePostsControllerTest < ActionController::TestCase
  setup do
    @lifestyle_post = lifestyle_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifestyle_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifestyle_post" do
    assert_difference('LifestylePost.count') do
      post :create, lifestyle_post: { body: @lifestyle_post.body, city: @lifestyle_post.city, country: @lifestyle_post.country, image: @lifestyle_post.image, people: @lifestyle_post.people, takeaways: @lifestyle_post.takeaways, title: @lifestyle_post.title, topic: @lifestyle_post.topic, user_id: @lifestyle_post.user_id, video: @lifestyle_post.video }
    end

    assert_redirected_to lifestyle_post_path(assigns(:lifestyle_post))
  end

  test "should show lifestyle_post" do
    get :show, id: @lifestyle_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifestyle_post
    assert_response :success
  end

  test "should update lifestyle_post" do
    patch :update, id: @lifestyle_post, lifestyle_post: { body: @lifestyle_post.body, city: @lifestyle_post.city, country: @lifestyle_post.country, image: @lifestyle_post.image, people: @lifestyle_post.people, takeaways: @lifestyle_post.takeaways, title: @lifestyle_post.title, topic: @lifestyle_post.topic, user_id: @lifestyle_post.user_id, video: @lifestyle_post.video }
    assert_redirected_to lifestyle_post_path(assigns(:lifestyle_post))
  end

  test "should destroy lifestyle_post" do
    assert_difference('LifestylePost.count', -1) do
      delete :destroy, id: @lifestyle_post
    end

    assert_redirected_to lifestyle_posts_path
  end
end
