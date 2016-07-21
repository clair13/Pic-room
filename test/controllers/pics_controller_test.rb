require 'test_helper'

class PicsControllerTest < ActionController::TestCase
  include Devise::Test::Helpers                          
  include Warden::Test::Helpers                        
  Warden.test_mode!                                    

  #def teardown                                         
  #  Warden.test_reset!                                 
  #end                           

  #setup do 
  #	@pic = pics(:one)
  #end
  	
  test "should get index" do
  	get :index
  	assert_response :success
    assert_not_nil assigns(:pics)
  end

  test "should get new" do
  	get :new
  	assert_response :success
  end

  test "should show pic" do
    get :show, id: @pic
    assert_response :success
  end

  test "should update pic" do
    patch :update, id: @pic, pic: { description: @pic.description}
    assert_redirected_to pics_path(assigns(:pic)) 
  end

  test "should destroy pic" do
    assert_difference('Pic.count', -1)do
      delete :destroy, id: @pic
    end

    assert_redirected_to pics_path
  end

end
