require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_try_to_see_home_page
    visit 'error'

    assert_equal 404, page.status_code
    # assert_equal "Does not exist", page.status_code
  end
end
