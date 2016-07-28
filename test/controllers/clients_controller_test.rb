require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  test "should get index" do
    # clients method is defined by name of the fixture, "clients.yml" and takes
    # an argument which is the first level key inside of that yml file.
    client = clients("the_osbornes")

    response = get :index
    assert_response :success

    assert_includes assigns("clients"), client

    assert_includes response.body, "Alex"
  end
end
