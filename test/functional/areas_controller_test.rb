require 'test_helper'

class AreasControllerTest < ActionController::TestCase
  test "should get london" do
    get :london
    assert_response :success
  end

  test "should get bedfordshire" do
    get :bedfordshire
    assert_response :success
  end

  test "should get berkshire" do
    get :berkshire
    assert_response :success
  end

  test "should get buckinghamshire" do
    get :buckinghamshire
    assert_response :success
  end

  test "should get essex" do
    get :essex
    assert_response :success
  end

  test "should get hertfordshire" do
    get :hertfordshire
    assert_response :success
  end

  test "should get kent" do
    get :kent
    assert_response :success
  end

  test "should get middlesex" do
    get :middlesex
    assert_response :success
  end

  test "should get oxfordshire" do
    get :oxfordshire
    assert_response :success
  end

  test "should get surrey" do
    get :surrey
    assert_response :success
  end

end
