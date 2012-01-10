require 'test_helper'

class SpaetiProductsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SpaetiProduct.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SpaetiProduct.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SpaetiProduct.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to spaeti_product_url(assigns(:spaeti_product))
  end

  def test_edit
    get :edit, :id => SpaetiProduct.first
    assert_template 'edit'
  end

  def test_update_invalid
    SpaetiProduct.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SpaetiProduct.first
    assert_template 'edit'
  end

  def test_update_valid
    SpaetiProduct.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SpaetiProduct.first
    assert_redirected_to spaeti_product_url(assigns(:spaeti_product))
  end

  def test_destroy
    spaeti_product = SpaetiProduct.first
    delete :destroy, :id => spaeti_product
    assert_redirected_to spaeti_products_url
    assert !SpaetiProduct.exists?(spaeti_product.id)
  end
end
