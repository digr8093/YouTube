module ApplicationHelper

  def nav_link_to ( click_text, action, url )

      return link_to click_text, url


  end

  def isAdmin?
    return current_user.try(:admin?)
  end
end
