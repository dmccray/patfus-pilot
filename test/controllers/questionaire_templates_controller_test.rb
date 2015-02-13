require 'test_helper'

class QuestionaireTemplatesControllerTest < ActionController::TestCase
  setup do
    @questionaire_template = questionaire_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionaire_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionaire_template" do
    assert_difference('QuestionaireTemplate.count') do
      post :create, questionaire_template: {  }
    end

    assert_redirected_to questionaire_template_path(assigns(:questionaire_template))
  end

  test "should show questionaire_template" do
    get :show, id: @questionaire_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionaire_template
    assert_response :success
  end

  test "should update questionaire_template" do
    patch :update, id: @questionaire_template, questionaire_template: {  }
    assert_redirected_to questionaire_template_path(assigns(:questionaire_template))
  end

  test "should destroy questionaire_template" do
    assert_difference('QuestionaireTemplate.count', -1) do
      delete :destroy, id: @questionaire_template
    end

    assert_redirected_to questionaire_templates_path
  end
end
