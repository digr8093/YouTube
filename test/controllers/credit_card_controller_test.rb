require 'test_helper'

class CreditCardControllerTest < ActionController::TestCase
  test "should get pay" do
    get :pay
    assert_response :success
  end

  test "should get return" do
    get :return
    assert_response :success
  end

  test "should get turnOff" do
    get :turnOff
    assert_response :success
  end

  test "should get turnOn" do
    get :turnOn
    assert_response :success
  end

end
