require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Should not save user without any information" do
    user = User.new
    assert_not user.save
  end

  test "Should not save user with invalid email" do
    user =
      User.new(
        email: "testgmail.com",
        password: "password",
      )
    assert_not user.save
  end

  test "Should not save user when password is too short" do
    user =
      User.new(
        email: "test@gmail.com",
        password: "short",
      )
    assert_not user.save
  end

  test "Should save user when provided with correct information" do
    user =
      User.new(
        email: "test@gmail.com",
        password: "password",
      )
    assert user.save
  end
end
