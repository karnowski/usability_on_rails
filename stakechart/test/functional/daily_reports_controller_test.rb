require File.dirname(__FILE__) + '/../test_helper'

class DailyReportsControllerTest < ActionController::TestCase
  def test_should_get_index
    @controller.do_not_render_view
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_reports)
  end

  def test_should_get_new
    @controller.do_not_render_view
    get :new
    assert_response :success
  end

  def test_should_create_daily_report
    @controller.do_not_render_view
    assert_difference('DailyReport.count') do
      post :create, :daily_report => new_daily_report.attributes
    end

    assert_redirected_to daily_report_path(assigns(:daily_report))
  end

  def test_should_show_daily_report
    get :show, :id => daily_reports(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => daily_reports(:one).id
    assert_response :success
  end

  def test_should_update_daily_report
    put :update, :id => daily_reports(:one).id, :daily_report => { }
    assert_redirected_to daily_report_path(assigns(:daily_report))
  end

  def test_should_destroy_daily_report
    assert_difference('DailyReport.count', -1) do
      delete :destroy, :id => daily_reports(:one).id
    end

    assert_redirected_to daily_reports_path
  end
end
