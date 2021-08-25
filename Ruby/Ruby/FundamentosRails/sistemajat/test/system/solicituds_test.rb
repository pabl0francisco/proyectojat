require "application_system_test_case"

class SolicitudsTest < ApplicationSystemTestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "visiting the index" do
    visit solicituds_url
    assert_selector "h1", text: "Solicituds"
  end

  test "creating a Solicitud" do
    visit solicituds_url
    click_on "New Solicitud"

    fill_in "Descripcion", with: @solicitud.descripcion
    fill_in "Destino", with: @solicitud.destino
    fill_in "Hora", with: @solicitud.hora
    fill_in "Monto sugerido", with: @solicitud.monto_sugerido
    fill_in "Oferta driver", with: @solicitud.oferta_driver
    fill_in "Origen", with: @solicitud.origen
    fill_in "Titulo", with: @solicitud.titulo
    click_on "Create Solicitud"

    assert_text "Solicitud was successfully created"
    click_on "Back"
  end

  test "updating a Solicitud" do
    visit solicituds_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @solicitud.descripcion
    fill_in "Destino", with: @solicitud.destino
    fill_in "Hora", with: @solicitud.hora
    fill_in "Monto sugerido", with: @solicitud.monto_sugerido
    fill_in "Oferta driver", with: @solicitud.oferta_driver
    fill_in "Origen", with: @solicitud.origen
    fill_in "Titulo", with: @solicitud.titulo
    click_on "Update Solicitud"

    assert_text "Solicitud was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitud" do
    visit solicituds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitud was successfully destroyed"
  end
end
