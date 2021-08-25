require "test_helper"

class CalificacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calificacion = calificacions(:one)
  end

  test "should get index" do
    get calificacions_url
    assert_response :success
  end

  test "should get new" do
    get new_calificacion_url
    assert_response :success
  end

  test "should create calificacion" do
    assert_difference('Calificacion.count') do
      post calificacions_url, params: { calificacion: { comentario: @calificacion.comentario, valor: @calificacion.valor } }
    end

    assert_redirected_to calificacion_url(Calificacion.last)
  end

  test "should show calificacion" do
    get calificacion_url(@calificacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_calificacion_url(@calificacion)
    assert_response :success
  end

  test "should update calificacion" do
    patch calificacion_url(@calificacion), params: { calificacion: { comentario: @calificacion.comentario, valor: @calificacion.valor } }
    assert_redirected_to calificacion_url(@calificacion)
  end

  test "should destroy calificacion" do
    assert_difference('Calificacion.count', -1) do
      delete calificacion_url(@calificacion)
    end

    assert_redirected_to calificacions_url
  end
end
