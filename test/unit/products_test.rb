require 'test_helper'

class ProductsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Products.new.valid?
  end
end
