require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "danilo", password: "password")
    @user.save
    @message = Message.new(body: "test message",user:@user)
  end

  test "message shoul be valid" do
    assert @message.valid?
  end

  test "body should be present" do
    @message.body = " "
    assert_not @message.valid?
  end

end
