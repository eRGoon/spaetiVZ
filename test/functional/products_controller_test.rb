require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Products.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Products.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Products.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to products_url(assigns(:products))
  end

  def test_edit
    get :edit, :id => Products.first
    assert_template 'edit'
  end

  def test_update_invalid
    Products.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Products.first
    assert_template 'edit'
  end

  def test_update_valid
    Products.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Products.first
    assert_redirected_to products_url(assigns(:products))
  end

  def test_destroy
    products = Products.first
    delete :destroy, :id => products
    assert_redirected_to products_url
    assert !Products.exists?(products.id)
  end
end
