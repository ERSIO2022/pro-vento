Feature: Tener una página de entrada (donde se coloca correo y contraseña).
    La aplicación estará en enfocada en organización y una buena logística en eventos dentro de la universidad de nombre ITESO. Esto es necesario para poder ingresar a tu cuenta.

 Scenario: El registro en la aplicación me dirige a la pagína principal.
    Given estoy en el registro
    When me registro
    Then estoy en la pagina principal.
 Scenario: Seleccionar el botón de crear evento.
    Given estoy en la página principal
    When toco el botón para crear el evento.
    Then abre la sección de registro.
 Scenario: Ingresar nombre del evento.
    Given estoy en la página principal
    When selecciono el campo de llenado el nombre del evento.
    Then escribo el nombre del evento.
 Scenario: Ingresar fecha.
    Given estoy en la página principal
    When selecciono el campo de llenado de fecha.
    Then escribo la fecha.
 Scenario: Ingresar hora.
    Given estoy en la página principal
    When selecciono el campo de llenado de hora.
    Then ingreso la hora.
 Scenario: Ingresar nombre del panelista.
    Given estoy en la página principal
    When selecciono el campo de llenado el nombre del panelista.
    Then escribo el nombre del panelista.
 Scenario: Ingresar profesión del panelista.
    Given estoy en la página principal.
    When selecciono el campo de llenado la profesión del panelista.
    Then escribo la profeción.
 Scenario: Ingresar el cupo máximo.
    Given estoy en la página principal
    When selecciono el campo de llenado del cupo máximo.
    Then escribo el número de personas o sin limite.
 Scenario: Dar de alta el evento.
    Given Ingresar nombre del evento.
    Given Ingresar fecha.
    Given Ingresar hora.
    Given Ingresar nombre del panelista.
    Given Ingresar profesión del panelista.
    Given Ingresar el cupo máximo.
    When selecciono el botón de crear.
    Then se crea el evento.

 