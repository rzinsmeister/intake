require 'test_helper'

class EntrantsControllerTest < ActionController::TestCase
  setup do
    @entrant = entrants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrant" do
    assert_difference('Entrant.count') do
      post :create, entrant: { cnamef: @entrant.cnamef, cnamel: @entrant.cnamel, contactid: @entrant.contactid, dob: @entrant.dob, entrydate: @entrant.entrydate, exitdate: @entrant.exitdate, grade: @entrant.grade, lastschool: @entrant.lastschool, mnres: @entrant.mnres, mpsschool: @entrant.mpsschool, nonmpsschool: @entrant.nonmpsschool, note: @entrant.note, shelterid: @entrant.shelterid, shelterschool: @entrant.shelterschool, totaldays: @entrant.totaldays }
    end

    assert_redirected_to entrant_path(assigns(:entrant))
  end

  test "should show entrant" do
    get :show, id: @entrant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrant
    assert_response :success
  end

  test "should update entrant" do
    put :update, id: @entrant, entrant: { cnamef: @entrant.cnamef, cnamel: @entrant.cnamel, contactid: @entrant.contactid, dob: @entrant.dob, entrydate: @entrant.entrydate, exitdate: @entrant.exitdate, grade: @entrant.grade, lastschool: @entrant.lastschool, mnres: @entrant.mnres, mpsschool: @entrant.mpsschool, nonmpsschool: @entrant.nonmpsschool, note: @entrant.note, shelterid: @entrant.shelterid, shelterschool: @entrant.shelterschool, totaldays: @entrant.totaldays }
    assert_redirected_to entrant_path(assigns(:entrant))
  end

  test "should destroy entrant" do
    assert_difference('Entrant.count', -1) do
      delete :destroy, id: @entrant
    end

    assert_redirected_to entrants_path
  end
end
