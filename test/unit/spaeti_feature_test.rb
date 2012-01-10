require 'test_helper'

class SpaetiFeatureTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SpaetiFeature.new.valid?
  end
end
