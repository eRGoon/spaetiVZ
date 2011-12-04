require 'test_helper'

class SpaetiTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Spaeti.new.valid?
  end
end
