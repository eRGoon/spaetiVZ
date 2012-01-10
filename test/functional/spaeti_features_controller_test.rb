require 'test_helper'

class SpaetiFeaturesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SpaetiFeature.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SpaetiFeature.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SpaetiFeature.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to spaeti_feature_url(assigns(:spaeti_feature))
  end

  def test_edit
    get :edit, :id => SpaetiFeature.first
    assert_template 'edit'
  end

  def test_update_invalid
    SpaetiFeature.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SpaetiFeature.first
    assert_template 'edit'
  end

  def test_update_valid
    SpaetiFeature.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SpaetiFeature.first
    assert_redirected_to spaeti_feature_url(assigns(:spaeti_feature))
  end

  def test_destroy
    spaeti_feature = SpaetiFeature.first
    delete :destroy, :id => spaeti_feature
    assert_redirected_to spaeti_features_url
    assert !SpaetiFeature.exists?(spaeti_feature.id)
  end
end
