require 'test_helper'

class GenrecreatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genrecreate = genrecreates(:one)
  end

  test "should get index" do
    get genrecreates_url
    assert_response :success
  end

  test "should get new" do
    get new_genrecreate_url
    assert_response :success
  end

  test "should create genrecreate" do
    assert_difference('Genrecreate.count') do
      post genrecreates_url, params: { genrecreate: { name: @genrecreate.name } }
    end

    assert_redirected_to genrecreate_url(Genrecreate.last)
  end

  test "should show genrecreate" do
    get genrecreate_url(@genrecreate)
    assert_response :success
  end

  test "should get edit" do
    get edit_genrecreate_url(@genrecreate)
    assert_response :success
  end

  test "should update genrecreate" do
    patch genrecreate_url(@genrecreate), params: { genrecreate: { name: @genrecreate.name } }
    assert_redirected_to genrecreate_url(@genrecreate)
  end

  test "should destroy genrecreate" do
    assert_difference('Genrecreate.count', -1) do
      delete genrecreate_url(@genrecreate)
    end

    assert_redirected_to genrecreates_url
  end
end
