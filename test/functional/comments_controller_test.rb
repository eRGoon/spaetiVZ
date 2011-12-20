require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Comment.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Comment.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Comment.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to comments_url(assigns(:comments))
  end

  def test_edit
    get :edit, :id => Comment.first
    assert_template 'edit'
  end

  def test_update_invalid
    Comment.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Comment.first
    assert_template 'edit'
  end

  def test_update_valid
    Comment.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Comment.first
    assert_redirected_to comments_url(assigns(:comments))
  end

  def test_destroy
    comments = Comment.first
    delete :destroy, :id => comments
    assert_redirected_to comments_url
    assert !Comment.exists?(comments.id)
  end
end
