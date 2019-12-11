require 'test_helper'

class TecherinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @techerinfo = techerinfos(:one)
  end

  test "should get index" do
    get techerinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_techerinfo_url
    assert_response :success
  end

  test "should create techerinfo" do
    assert_difference('Techerinfo.count') do
      post techerinfos_url, params: { techerinfo: { address: @techerinfo.address, name: @techerinfo.name } }
    end

    assert_redirected_to techerinfo_url(Techerinfo.last)
  end

  test "should show techerinfo" do
    get techerinfo_url(@techerinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_techerinfo_url(@techerinfo)
    assert_response :success
  end

  test "should update techerinfo" do
    patch techerinfo_url(@techerinfo), params: { techerinfo: { address: @techerinfo.address, name: @techerinfo.name } }
    assert_redirected_to techerinfo_url(@techerinfo)
  end

  test "should destroy techerinfo" do
    assert_difference('Techerinfo.count', -1) do
      delete techerinfo_url(@techerinfo)
    end

    assert_redirected_to techerinfos_url
  end
end
