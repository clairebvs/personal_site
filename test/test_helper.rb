require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/minitest'
require './app/controllers/personal_site'

Capybara.app = PersonalSite

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
  Capybara.save_path = './tmp/capybara'
end

# If you are not using Rails, define a base class for your Capybara tests like so:

# def teardown
#     Capybara.reset_sessions!
#     Capybara.use_default_driver
# end
