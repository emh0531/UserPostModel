require "test_helper"
#Testing the post function of the app
class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.create(
      username: "test_user",
      email: "test@example.com",
      first_name: "Joe",
      last_name: "Johnson"
      )
     
    @post = Post.new(
      content: "Test Content",
      user: @user 
    )
  end  

  test "should be valid" do
    assert @post.valid? 
  end 

  test "content should be present" do 
    @post.content = " "
    assert @post.valid? 
  end 

  test "should belong to a user" do 
    assert_respond_to @post, :user 
    assert_equal @user, @post.user 
  end 
  
end 
