require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { activation_hash: @user.activation_hash, email: @user.email, facebook_id: @user.facebook_id, first_name: @user.first_name, is_active: @user.is_active, is_banned: @user.is_banned, is_confirmed: @user.is_confirmed, last_name: @user.last_name, membership_type: @user.membership_type }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { activation_hash: @user.activation_hash, email: @user.email, facebook_id: @user.facebook_id, first_name: @user.first_name, is_active: @user.is_active, is_banned: @user.is_banned, is_confirmed: @user.is_confirmed, last_name: @user.last_name, membership_type: @user.membership_type }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
