require 'test_helper'

class RFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_file = r_files(:one)
  end

  test "should get index" do
    get r_files_url
    assert_response :success
  end

  test "should get new" do
    get new_r_file_url
    assert_response :success
  end

  test "should create r_file" do
    assert_difference('RFile.count') do
      post r_files_url, params: { r_file: { URL: @r_file.URL, access: @r_file.access, date: @r_file.date, event: @r_file.event, name: @r_file.name, place: @r_file.place, reporter: @r_file.reporter, uploader: @r_file.uploader } }
    end

    assert_redirected_to r_file_url(RFile.last)
  end

  test "should show r_file" do
    get r_file_url(@r_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_file_url(@r_file)
    assert_response :success
  end

  test "should update r_file" do
    patch r_file_url(@r_file), params: { r_file: { URL: @r_file.URL, access: @r_file.access, date: @r_file.date, event: @r_file.event, name: @r_file.name, place: @r_file.place, reporter: @r_file.reporter, uploader: @r_file.uploader } }
    assert_redirected_to r_file_url(@r_file)
  end

  test "should destroy r_file" do
    assert_difference('RFile.count', -1) do
      delete r_file_url(@r_file)
    end

    assert_redirected_to r_files_url
  end
end
