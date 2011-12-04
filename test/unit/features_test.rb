require 'test_helper'

class FeaturesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Features.new.valid?
  end
end
