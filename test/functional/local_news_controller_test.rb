require 'test_helper'

class LocalNewsControllerTest < ActionController::TestCase
  setup do
    @local_news = local_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_news" do
    assert_difference('LocalNews.count') do
      post :create, local_news: { emision: @local_news.emision, fecha: @local_news.fecha, user_id: @local_news.user_id }
    end

    assert_redirected_to local_news_path(assigns(:local_news))
  end

  test "should show local_news" do
    get :show, id: @local_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_news
    assert_response :success
  end

  test "should update local_news" do
    put :update, id: @local_news, local_news: { emision: @local_news.emision, fecha: @local_news.fecha, user_id: @local_news.user_id }
    assert_redirected_to local_news_path(assigns(:local_news))
  end

  test "should destroy local_news" do
    assert_difference('LocalNews.count', -1) do
      delete :destroy, id: @local_news
    end

    assert_redirected_to local_news_index_path
  end
end
