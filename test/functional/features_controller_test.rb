require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Features.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Features.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Features.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to features_url(assigns(:features))
  end

  def test_edit
    get :edit, :id => Features.first
    assert_template 'edit'
  end

  def test_update_invalid
    Features.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Features.first
    assert_template 'edit'
  end

  def test_update_valid
    Features.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Features.first
    assert_redirected_to features_url(assigns(:features))
  end

  def test_destroy
    features = Features.first
    delete :destroy, :id => features
    assert_redirected_to features_url
    assert !Features.exists?(features.id)
  end
end
