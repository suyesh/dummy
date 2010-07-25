require File.expand_path(File.dirname(__FILE__) + "/test_helper")

module DummyInternetTests
  class DummyInternetTest < Test::Unit::TestCase
    test "generates valid emails" do
      assert_match /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i, Dummy::Internet.email
    end

    test "generates valid user names" do
      assert_match /^([^\s]+)$/i, Dummy::Internet.user_name
    end
  end
end