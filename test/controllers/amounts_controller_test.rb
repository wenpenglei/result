require 'test_helper'

class AmountsControllerTest < ActionController::TestCase
  setup do
    @amount = amounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amount" do
    assert_difference('Amount.count') do
      post :create, amount: { one: @amount.one, result: @amount.result, two: @amount.two }
    end

    assert_redirected_to amount_path(assigns(:amount))
  end

  test "should show amount" do
    get :show, id: @amount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amount
    assert_response :success
  end

  test "should update amount" do
    patch :update, id: @amount, amount: { one: @amount.one, result: @amount.result, two: @amount.two }
    assert_redirected_to amount_path(assigns(:amount))
  end

  test "should destroy amount" do
    assert_difference('Amount.count', -1) do
      delete :destroy, id: @amount
    end

    assert_redirected_to amounts_path
  end
end
