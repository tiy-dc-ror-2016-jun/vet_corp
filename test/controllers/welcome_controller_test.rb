require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    response = get :index
    assert_response :success

    # Verify the view that is to be rendered
    assert_template :index
    assert_select("#visits-today h3","Visits Today")

    # Access fixture for visits with key two
    # visits(:two)

    # Access the instance variables in the matching controller
    # assigns("visits_today")
    #
    expected_visits_today = [visits(:two)]

    assert_equal expected_visits_today, assigns("visits_today")

    assert_select("#visits-today p", {count: 1, text: "Moose"})
  end
end
