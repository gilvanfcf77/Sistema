require 'test_helper'

class NegociosControllerTest < ActionController::TestCase
  setup do
    @negocio = negocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:negocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create negocio" do
    assert_difference('Negocio.count') do
      post :create, negocio: { codigo: @negocio.codigo, data: @negocio.data, produto: @negocio.produto, quantidade: @negocio.quantidade, tipo: @negocio.tipo }
    end

    assert_redirected_to negocio_path(assigns(:negocio))
  end

  test "should show negocio" do
    get :show, id: @negocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @negocio
    assert_response :success
  end

  test "should update negocio" do
    patch :update, id: @negocio, negocio: { codigo: @negocio.codigo, data: @negocio.data, produto: @negocio.produto, quantidade: @negocio.quantidade, tipo: @negocio.tipo }
    assert_redirected_to negocio_path(assigns(:negocio))
  end

  test "should destroy negocio" do
    assert_difference('Negocio.count', -1) do
      delete :destroy, id: @negocio
    end

    assert_redirected_to negocios_path
  end
end
