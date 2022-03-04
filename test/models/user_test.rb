require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "#full_name method" do
    # set up
    john = User.new(first_name: "john", last_name: "lennon")

    # verify
    assert_equal "John Lennon", john.full_name
  end

  test "#full_name method with only a first_name" do
    # set up
    john = User.new(first_name: "john")

    # verify
    assert_equal "John", john.full_name
  end
end
