require 'test_helper'

class GlobalinfosControllerTest < ActionController::TestCase
  setup do
    @globalinfo = globalinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:globalinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create globalinfo" do
    assert_difference('Globalinfo.count') do
      post :create, globalinfo: { content: @globalinfo.content, publisher: @globalinfo.publisher, title: @globalinfo.title }
    end

    assert_redirected_to globalinfo_path(assigns(:globalinfo))
  end

  test "should show globalinfo" do
    get :show, id: @globalinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @globalinfo
    assert_response :success
  end

  test "should update globalinfo" do
    patch :update, id: @globalinfo, globalinfo: { content: @globalinfo.content, publisher: @globalinfo.publisher, title: @globalinfo.title }
    assert_redirected_to globalinfo_path(assigns(:globalinfo))
  end

  test "should destroy globalinfo" do
    assert_difference('Globalinfo.count', -1) do
      delete :destroy, id: @globalinfo
    end

    assert_redirected_to globalinfos_path
  end
end
