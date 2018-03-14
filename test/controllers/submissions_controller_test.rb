require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should return error with no params" do
    post submissions_url
    assert_response 400
  end

  test "should return error with present but empty params" do
    post submissions_url, params: {first_name: "", last_name: "", email: "", slogan: ""}
    assert_response 400
  end

  test "should return error with present but empty email" do
    post submissions_url, params: {first_name: "John", last_name: "Doe", email: "", slogan: "This is the best slogan"}
    assert_response 400
  end

  test "should return error with present but email param not a real valid address" do
    post submissions_url, params: {first_name: "John", last_name: "Doe", email: "johndoe.com", slogan: "This is the best slogan"}
    assert_response 400
  end

  test "should return error with valid params except slogan under 10 characters" do
    post submissions_url, params: {first_name: "John", last_name: "Doe", email: "john@doe.com", slogan: "123456789"}
    assert_response 400
  end

  test "should return error with valid params except slogan greater than 50 characters" do
    post submissions_url, params: {first_name: "John", last_name: "Doe", email: "john@doe.com", slogan: "ABCDEFGHIJKLMNOPQRSTUVWXYZ ABCDEFGHIJKLMNOPQRSTUVWXYZ"}
    assert_response 400
  end

  test "should return success with valid params" do
    post submissions_url, params: {first_name: "John", last_name: "Doe", email: "john@doe.com", slogan: "This is the best slogan"}
    assert_response 200
  end
end
