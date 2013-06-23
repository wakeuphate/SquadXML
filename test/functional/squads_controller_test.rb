require 'test_helper'

class SquadsControllerTest < ActionController::TestCase
  setup do
    @squad = squads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squad" do
    assert_difference('Squad.count') do
      post :create, squad: { email: @squad.email, name: @squad.name, picture: @squad.picture, tag: @squad.tag, title: @squad.title, website: @squad.website }
    end

    assert_redirected_to squad_path(assigns(:squad))
  end

  test "should show squad" do
    get :show, id: @squad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squad
    assert_response :success
  end

  test "should update squad" do
    put :update, id: @squad, squad: { email: @squad.email, name: @squad.name, picture: @squad.picture, tag: @squad.tag, title: @squad.title, website: @squad.website }
    assert_redirected_to squad_path(assigns(:squad))
  end

  test "should destroy squad" do
    assert_difference('Squad.count', -1) do
      delete :destroy, id: @squad
    end

    assert_redirected_to squads_path
  end
end
