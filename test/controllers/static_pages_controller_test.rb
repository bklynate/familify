require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Familify | Follow Family Events & Discussions"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Familify Help | Familify FAQ"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "Familify About | We are a 'family-' centric communication platform"
  end


  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
