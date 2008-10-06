require '../test_helper'

class BogeysControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bogeys)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_bogey
    assert_difference('Bogey.count') do
      post :create, :bogey => { }
    end

    assert_redirected_to bogey_path(assigns(:bogey))
  end

  def test_should_show_bogey
    get :show, :id => bogeys(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bogeys(:one).id
    assert_response :success
  end

  def test_should_update_bogey
    put :update, :id => bogeys(:one).id, :bogey => { }
    assert_redirected_to bogey_path(assigns(:bogey))
  end

  def test_should_destroy_bogey
    assert_difference('Bogey.count', -1) do
      delete :destroy, :id => bogeys(:one).id
    end

    assert_redirected_to bogeys_path
  end
end
