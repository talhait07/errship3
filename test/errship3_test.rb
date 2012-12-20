require 'test_helper'

class Errship3Test < ActiveSupport::TestCase
  test 'Errship3 is a module' do
    assert_kind_of Module, Errship3
  end
end

class ApplicationControllerTest < ActionController::TestCase
  test "/error routes to errship3's standard error page" do
    assert_routing '/error', { :controller => 'application', :action => 'errship3_standard' }
  end

  test "flashback sets the error message flash" do
    get :try_flashback, { 'message' => 'tricky' }
    assert_equal 'tricky', flash[:error]
  end
end

class Errship3IntegrationTest < ActionController::IntegrationTest
  test "/any_nonexistant_route is routed to errship3's 404 page" do
    get '/any_nonexistant_route'
    assert_routing '/error', { :controller => 'application', :action => 'errship3_standard' }
    assert_response :success
  end
  
  test "errship3's 404 page has a 404 status code if configured so" do
    Errship3.status_code_success = false
    get '/any_nonexistant_route'
    assert_response :missing
  end

end
