require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  def login_user
    session[:user_id] = users(:john).id
  end

  # Requires all tests to expect as user to be logged in in this class
  # def setup
  #   login_user
  # end

  test "should get index" do
    login_user
    # clients method is defined by name of the fixture, "clients.yml" and takes
    # an argument which is the first level key inside of that yml file.
    client = clients("the_osbornes")

    response = get :index
    assert_response :success

    assert_includes assigns("clients"), client

    assert_includes response.body, "Alex"
  end

  def test_redirects_to_login_page_if_not_logged_in
    get :index
    assert_redirected_to login_path
  end
end
