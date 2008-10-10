module ApplicationHelper
  def full_name_of_current_user
    User.find_by_login("bruce").full_name
  end
end
