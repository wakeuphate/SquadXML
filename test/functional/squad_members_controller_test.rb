require 'test_helper'

class SquadMembersControllerTest < ActionController::TestCase
  setup do
    @squad_member = squad_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squad_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squad_member" do
    assert_difference('SquadMember.count') do
      post :create, squad_member: { email: @squad_member.email, icq: @squad_member.icq, name: @squad_member.name, nickname: @squad_member.nickname, remark: @squad_member.remark, uid: @squad_member.uid }
    end

    assert_redirected_to squad_member_path(assigns(:squad_member))
  end

  test "should show squad_member" do
    get :show, id: @squad_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squad_member
    assert_response :success
  end

  test "should update squad_member" do
    put :update, id: @squad_member, squad_member: { email: @squad_member.email, icq: @squad_member.icq, name: @squad_member.name, nickname: @squad_member.nickname, remark: @squad_member.remark, uid: @squad_member.uid }
    assert_redirected_to squad_member_path(assigns(:squad_member))
  end

  test "should destroy squad_member" do
    assert_difference('SquadMember.count', -1) do
      delete :destroy, id: @squad_member
    end

    assert_redirected_to squad_members_path
  end
end
