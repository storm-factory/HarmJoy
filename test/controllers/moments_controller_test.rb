require 'test_helper'

class MomentsControllerTest < ActionController::TestCase
  setup do
    @moment = moments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moment" do
    assert_difference('Moment.count') do
      post :create, moment: { active: @moment.active, asset_id: @moment.asset_id, description: @moment.description, lat: @moment.lat, long: @moment.long, moment_type_id: @moment.moment_type_id, name: @moment.name, race_date_id: @moment.race_date_id, source: @moment.source }
    end

    assert_redirected_to moment_path(assigns(:moment))
  end

  test "should show moment" do
    get :show, id: @moment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moment
    assert_response :success
  end

  test "should update moment" do
    patch :update, id: @moment, moment: { active: @moment.active, asset_id: @moment.asset_id, description: @moment.description, lat: @moment.lat, long: @moment.long, moment_type_id: @moment.moment_type_id, name: @moment.name, race_date_id: @moment.race_date_id, source: @moment.source }
    assert_redirected_to moment_path(assigns(:moment))
  end

  test "should destroy moment" do
    assert_difference('Moment.count', -1) do
      delete :destroy, id: @moment
    end

    assert_redirected_to moments_path
  end
end
