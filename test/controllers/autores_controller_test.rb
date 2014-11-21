require 'test_helper'

class AutoresControllerTest < ActionController::TestCase
  setup do
    @autor = autores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autor" do
    assert_difference('Autor.count') do
      post :create, autor: { email: @autor.email, ext_email: @autor.ext_email, ext_email_alternativo: @autor.ext_email_alternativo, ext_envia_reporte_liq: @autor.ext_envia_reporte_liq, ext_envia_reporte_stock: @autor.ext_envia_reporte_stock, ext_heredero: @autor.ext_heredero, ext_telefono: @autor.ext_telefono, first_name: @autor.first_name, idsap: @autor.idsap, last_name: @autor.last_name, sales_org: @autor.sales_org, status: @autor.status, tax_number: @autor.tax_number, tax_type: @autor.tax_type, telephone: @autor.telephone, vendor: @autor.vendor }
    end

    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should show autor" do
    get :show, id: @autor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autor
    assert_response :success
  end

  test "should update autor" do
    patch :update, id: @autor, autor: { email: @autor.email, ext_email: @autor.ext_email, ext_email_alternativo: @autor.ext_email_alternativo, ext_envia_reporte_liq: @autor.ext_envia_reporte_liq, ext_envia_reporte_stock: @autor.ext_envia_reporte_stock, ext_heredero: @autor.ext_heredero, ext_telefono: @autor.ext_telefono, first_name: @autor.first_name, idsap: @autor.idsap, last_name: @autor.last_name, sales_org: @autor.sales_org, status: @autor.status, tax_number: @autor.tax_number, tax_type: @autor.tax_type, telephone: @autor.telephone, vendor: @autor.vendor }
    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should destroy autor" do
    assert_difference('Autor.count', -1) do
      delete :destroy, id: @autor
    end

    assert_redirected_to autores_path
  end
end
