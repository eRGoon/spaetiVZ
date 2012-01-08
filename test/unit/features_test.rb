require 'test_helper'

class FeaturesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Feature.new.valid?
  end
end
