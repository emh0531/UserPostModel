require "test_helper"
#testing the user creation and association functions

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      username: "test_user",
      email: "test@example.com",
      first_name: "Joe",
      last_name: "Johnson"
    )
  end 

  test "should be valid" do
    assert @user.valid?
  end 

  test "username should be present" do
    @user.username = " "
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = " "
    assert @user.valid?
  end 

  test "email should be valid" do 
    @user.email = "invalid_email"
    assert @user.valid? 
  end 

  test "first name should be present" do 
    @user.first_name = " "
    assert @user.valid? 
  end 

  test "last name should be present" do
    @user.last_name = " "
    assert @user.valid? 
  end 

  test "should have many posts" do 
    assert_respond_to @user, :posts
  end 
  # test "the truth" do
  #   assert true
  # end
end
