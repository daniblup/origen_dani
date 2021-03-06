require 'test_helper'

class SeriesControllerTest < ActionController::TestCase
  setup do
    @series = series(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create series" do
    assert_difference('Serie.count') do
      post :create, series: { name: @series.name, year: @series.year }
    end

    assert_redirected_to series_path(assigns(:series))
  end

  test "should show series" do
    get :show, id: @series
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @series
    assert_response :success
  end

  test "should update series" do
    patch :update, id: @series, series: { name: @series.name, year: @series.year }
    assert_redirected_to series_path(assigns(:series))
  end

  test "should destroy series" do
    assert_difference('Serie.count', -1) do
      delete :destroy, id: @series
    end

    assert_redirected_to series_path
  end
end
