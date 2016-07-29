require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_can_sign_up_user
    prev_count = User.count
    User.sign_up("example@example.com")

    assert_equal prev_count + 1, User.count
  end

  def test_emails_must_be_unique
    prev_count = User.count

    User.sign_up("example1@example.com")
    User.sign_up("example1@example.com")

    assert_equal prev_count + 1, User.count
  end

  def test_cannot_signup_without_a_valid_email
    prev_count = User.count
    new_user = User.sign_up("example")

    assert_equal prev_count + 0, User.count
    refute new_user.valid?
  end
end
