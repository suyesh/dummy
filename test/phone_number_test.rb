require_relative 'test_helper'

module DummyPhoneNumberTests
  class DummyPhoneNumberTest < Test::Unit::TestCase
    def test_valid_phone_number
      assert_match VALIDATE[:phone_number], Dummy::PhoneNumber.phone_number
    end
    
    def test_valid_short_phone_number
      assert_match VALIDATE[:phone_number_short], Dummy::PhoneNumber.phone_number_short
    end
  end
end
