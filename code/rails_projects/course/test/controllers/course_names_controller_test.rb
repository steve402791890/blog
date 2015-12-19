require 'test_helper'

class CourseNamesControllerTest < ActionController::TestCase
  setup do
    @course_name = course_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_name" do
    assert_difference('CourseName.count') do
      post :create, course_name: { courser_name: @course_name.courser_name, hours: @course_name.hours, quntity: @course_name.quntity, teacher_name: @course_name.teacher_name, title: @course_name.title }
    end

    assert_redirected_to course_name_path(assigns(:course_name))
  end

  test "should show course_name" do
    get :show, id: @course_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_name
    assert_response :success
  end

  test "should update course_name" do
    patch :update, id: @course_name, course_name: { courser_name: @course_name.courser_name, hours: @course_name.hours, quntity: @course_name.quntity, teacher_name: @course_name.teacher_name, title: @course_name.title }
    assert_redirected_to course_name_path(assigns(:course_name))
  end

  test "should destroy course_name" do
    assert_difference('CourseName.count', -1) do
      delete :destroy, id: @course_name
    end

    assert_redirected_to course_names_path
  end
end
