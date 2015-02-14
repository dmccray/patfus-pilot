require 'test_helper'

class QuestionnaireTemplatesControllerTest < ActionController::TestCase
  setup do
    @questionnaire_template = questionnaire_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionnaire_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionnaire_template" do
    assert_difference('questionnaireTemplate.count') do
      post :create, questionnaire_template: {  }
    end

    assert_redirected_to questionnaire_template_path(assigns(:questionnaire_template))
  end

  test "should show questionnaire_template" do
    get :show, id: @questionnaire_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionnaire_template
    assert_response :success
  end

  test "should update questionnaire_template" do
    patch :update, id: @questionnaire_template, questionnaire_template: {  }
    assert_redirected_to questionnaire_template_path(assigns(:questionnaire_template))
  end

  test "should destroy questionnaire_template" do
    assert_difference('questionnaireTemplate.count', -1) do
      delete :destroy, id: @questionnaire_template
    end

    assert_redirected_to questionnaire_templates_path
  end
end
