require 'test_helper'

class SpaetisControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Spaeti.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Spaeti.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Spaeti.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to spaeti_url(assigns(:spaeti))
  end

  def test_edit
    get :edit, :id => Spaeti.first
    assert_template 'edit'
  end

  def test_update_invalid
    Spaeti.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Spaeti.first
    assert_template 'edit'
  end

  def test_update_valid
    Spaeti.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Spaeti.first
    assert_redirected_to spaeti_url(assigns(:spaeti))
  end

  def test_destroy
    spaeti = Spaeti.first
    delete :destroy, :id => spaeti
    assert_redirected_to spaetis_url
    assert !Spaeti.exists?(spaeti.id)
  end
end
