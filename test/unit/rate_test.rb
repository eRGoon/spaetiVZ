require 'test_helper'

class RateTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Rate.new.valid?
  end
end
