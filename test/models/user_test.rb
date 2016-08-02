require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_can_sign_up_user
    prev_count = User.count
    User.sign_up(email: "example@example.com", password: 'password')

    assert_equal prev_count + 1, User.count
  end

  def test_emails_must_be_unique
    prev_count = User.count

    User.sign_up(email: "example1@example.com", password: 'password')
    User.sign_up(email: "example1@example.com", password: 'password')

    assert_equal prev_count + 1, User.count
  end

  def test_cannot_signup_without_a_valid_email
    prev_count = User.count
    new_user = User.sign_up(email: "exampl", password: 'password')

    assert_equal prev_count + 0, User.count
    refute new_user.valid?
  end

  def test_can_set_a_password
    user = User.new(email: 'example3@example.com')
    user.password = "dc_ror_june_is_awesome"

    refute_equal nil, user.password_digest
  end

  def test_can_check_password
    user = User.new(email: 'example3@example.com', password: "dc_ror_june_is_awesome" )

    assert user.password == "dc_ror_june_is_awesome"
  end
end
