require 'test_helper'

class SkillinstancesControllerTest < ActionController::TestCase
  setup do
    @skillinstance = skillinstances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skillinstances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skillinstance" do
    assert_difference('Skillinstance.count') do
      post :create, skillinstance: { active: @skillinstance.active, cp_spent: @skillinstance.cp_spent, rank: @skillinstance.rank }
    end

    assert_redirected_to skillinstance_path(assigns(:skillinstance))
  end

  test "should show skillinstance" do
    get :show, id: @skillinstance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skillinstance
    assert_response :success
  end

  test "should update skillinstance" do
    put :update, id: @skillinstance, skillinstance: { active: @skillinstance.active, cp_spent: @skillinstance.cp_spent, rank: @skillinstance.rank }
    assert_redirected_to skillinstance_path(assigns(:skillinstance))
  end

  test "should destroy skillinstance" do
    assert_difference('Skillinstance.count', -1) do
      delete :destroy, id: @skillinstance
    end

    assert_redirected_to skillinstances_path
  end
end
