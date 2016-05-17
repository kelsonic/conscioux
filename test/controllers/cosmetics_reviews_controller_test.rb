require 'test_helper'

class CosmeticsReviewsControllerTest < ActionController::TestCase
  setup do
    @cosmetics_review = cosmetics_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cosmetics_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cosmetics_review" do
    assert_difference('CosmeticsReview.count') do
      post :create, cosmetics_review: { brand: @cosmetics_review.brand, city: @cosmetics_review.city, cosmetics_review_body: @cosmetics_review.cosmetics_review_body, cosmetics_review_title: @cosmetics_review.cosmetics_review_title, country: @cosmetics_review.country, gender: @cosmetics_review.gender, product_name: @cosmetics_review.product_name, store: @cosmetics_review.store, type_tag: @cosmetics_review.type_tag, user_id: @cosmetics_review.user_id }
    end

    assert_redirected_to cosmetics_review_path(assigns(:cosmetics_review))
  end

  test "should show cosmetics_review" do
    get :show, id: @cosmetics_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cosmetics_review
    assert_response :success
  end

  test "should update cosmetics_review" do
    patch :update, id: @cosmetics_review, cosmetics_review: { brand: @cosmetics_review.brand, city: @cosmetics_review.city, cosmetics_review_body: @cosmetics_review.cosmetics_review_body, cosmetics_review_title: @cosmetics_review.cosmetics_review_title, country: @cosmetics_review.country, gender: @cosmetics_review.gender, product_name: @cosmetics_review.product_name, store: @cosmetics_review.store, type_tag: @cosmetics_review.type_tag, user_id: @cosmetics_review.user_id }
    assert_redirected_to cosmetics_review_path(assigns(:cosmetics_review))
  end

  test "should destroy cosmetics_review" do
    assert_difference('CosmeticsReview.count', -1) do
      delete :destroy, id: @cosmetics_review
    end

    assert_redirected_to cosmetics_reviews_path
  end
end
