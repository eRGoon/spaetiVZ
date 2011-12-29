require 'test_helper'

class RatesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Rate.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Rate.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Rate.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to rate_url(assigns(:rate))
  end

  def test_edit
    get :edit, :id => Rate.first
    assert_template 'edit'
  end

  def test_update_invalid
    Rate.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Rate.first
    assert_template 'edit'
  end

  def test_update_valid
    Rate.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Rate.first
    assert_redirected_to rate_url(assigns(:rate))
  end

  def test_destroy
    rate = Rate.first
    delete :destroy, :id => rate
    assert_redirected_to rates_url
    assert !Rate.exists?(rate.id)
  end
end
