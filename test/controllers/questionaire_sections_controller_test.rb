require 'test_helper'

class QuestionaireSectionsControllerTest < ActionController::TestCase
  setup do
    @questionaire_section = questionaire_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionaire_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionaire_section" do
    assert_difference('QuestionaireSection.count') do
      post :create, questionaire_section: {  }
    end

    assert_redirected_to questionaire_section_path(assigns(:questionaire_section))
  end

  test "should show questionaire_section" do
    get :show, id: @questionaire_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionaire_section
    assert_response :success
  end

  test "should update questionaire_section" do
    patch :update, id: @questionaire_section, questionaire_section: {  }
    assert_redirected_to questionaire_section_path(assigns(:questionaire_section))
  end

  test "should destroy questionaire_section" do
    assert_difference('QuestionaireSection.count', -1) do
      delete :destroy, id: @questionaire_section
    end

    assert_redirected_to questionaire_sections_path
  end
end
