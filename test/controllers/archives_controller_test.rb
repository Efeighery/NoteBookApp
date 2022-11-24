require "test_helper"

class ArchivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archive = archives(:one)
  end

  test "should get index" do
    get archives_url
    assert_response :success
  end

  test "should get new" do
    get new_archive_url
    assert_response :success
  end

  test "should create archive" do
    assert_difference("Archive.count") do
      #post archives_path
      post archives_url, params: { archive: { content_box: @archive.content_box, first_name: @archive.first_name, last_name: @archive.last_name } }
    end

    assert_redirected_to archive_url(Archive.last)
  end

  test "should show archive" do
    get archive_url(@archive)
    assert_response :success
  end

  test "should get edit" do
    get edit_archive_url(@archive)
    assert_response :success
  end

  test "should update archive" do
    #post archives_path
    patch archive_url(@archive), params: { archive: { content_box: @archive.content_box, first_name: @archive.first_name, last_name: @archive.last_name } }
    assert_redirected_to archive_url(@archive)
  end

  test "should destroy archive" do
    assert_difference("Archive.count", -1) do
      delete archive_url(@archive)
    end

    assert_redirected_to archives_url
  end
end
