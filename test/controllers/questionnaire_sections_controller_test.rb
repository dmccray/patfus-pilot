require 'test_helper'

class QuestionnaireSectionsControllerTest < ActionController::TestCase
  setup do
    @questionnaire_section = questionnaire_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionnaire_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionnaire_section" do
    assert_difference('questionnaireSection.count') do
      post :create, questionnaire_section: {  }
    end

    assert_redirected_to questionnaire_section_path(assigns(:questionnaire_section))
  end

  test "should show questionnaire_section" do
    get :show, id: @questionnaire_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionnaire_section
    assert_response :success
  end

  test "should update questionnaire_section" do
    patch :update, id: @questionnaire_section, questionnaire_section: {  }
    assert_redirected_to questionnaire_section_path(assigns(:questionnaire_section))
  end

  test "should destroy questionnaire_section" do
    assert_difference('questionnaireSection.count', -1) do
      delete :destroy, id: @questionnaire_section
    end

    assert_redirected_to questionnaire_sections_path
  end
end
