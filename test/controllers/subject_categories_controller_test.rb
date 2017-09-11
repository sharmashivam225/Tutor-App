require 'test_helper'

class SubjectCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_category = subject_categories(:one)
  end

  test "should get index" do
    get subject_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_category_url
    assert_response :success
  end

  test "should create subject_category" do
    assert_difference('SubjectCategory.count') do
      post subject_categories_url, params: { subject_category: { description: @subject_category.description, name: @subject_category.name } }
    end

    assert_redirected_to subject_category_url(SubjectCategory.last)
  end

  test "should show subject_category" do
    get subject_category_url(@subject_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_category_url(@subject_category)
    assert_response :success
  end

  test "should update subject_category" do
    patch subject_category_url(@subject_category), params: { subject_category: { description: @subject_category.description, name: @subject_category.name } }
    assert_redirected_to subject_category_url(@subject_category)
  end

  test "should destroy subject_category" do
    assert_difference('SubjectCategory.count', -1) do
      delete subject_category_url(@subject_category)
    end

    assert_redirected_to subject_categories_url
  end
end
