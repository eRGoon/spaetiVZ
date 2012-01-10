require 'test_helper'

class SpaetiProductTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SpaetiProduct.new.valid?
  end
end
