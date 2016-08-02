require 'test_helper'

class VaccinationsControllerTest < ActionController::TestCase
  setup do
    @vaccination = vaccinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaccinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaccination" do
    assert_difference('Vaccination.count') do
      post :create, vaccination: { administered_on: @vaccination.administered_on, dosage_in_ml: @vaccination.dosage_in_ml, drug_name: @vaccination.drug_name, pet_id: @vaccination.pet_id }
    end

    assert_redirected_to vaccination_path(assigns(:vaccination))
  end

  test "should show vaccination" do
    get :show, id: @vaccination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaccination
    assert_response :success
  end

  test "should update vaccination" do
    patch :update, id: @vaccination, vaccination: { administered_on: @vaccination.administered_on, dosage_in_ml: @vaccination.dosage_in_ml, drug_name: @vaccination.drug_name, pet_id: @vaccination.pet_id }
    assert_redirected_to vaccination_path(assigns(:vaccination))
  end

  test "should destroy vaccination" do
    assert_difference('Vaccination.count', -1) do
      delete :destroy, id: @vaccination
    end

    assert_redirected_to vaccinations_path
  end
end
