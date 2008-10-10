require '../test_helper'

class ApplicationHelperTest < ActionView::TestCase
  def test_full_name_of_current_user
    User.expects(:find_by_login).with("bruce").returns(user = stub(:full_name => :some_full_name))
    assert_equal :some_full_name, full_name_of_current_user
  end
end
