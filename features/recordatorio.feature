Feature: Como usuario, quiero poder tener un recordatorio de los eventos a los que me registré por parte de la aplicación.

Scenario: The one where iniciar sesión en la aplicación
    Given ingreso a la página de Civiteso
    When coloco mi usuario y contraseña
    Then inicio sesión en la aplicación

Scenario: The one where realizar registro a evento
    Given ingreso a la pestaña de registro
    When coloco los datos completos
    Then realizo registro al evento

Scenario: The one where validar que el registro se guarde correctamente.
    Given quiero confirmar mi registro a un evento
    When completo el registro
    Then me llega un correo validando mi registro

Scenario: The one where la aplicación guarda en la base de datos correspondiente los datos del usuario y del evento al que se registró
    Given se realiza un registro
    When se envían los datos a la base de datos
    Then los datos (usuario y evento) se guardan en la base de datos

Scenario: The one where se aceptan los términos y condiciones, se realiza el registro
    Given se está realizando un registro
    When se selecciona “Aceptar términos y condiciones”
    Then se completa el registro

Scenario: The one where si no se aceptan los términos y condiciones, no se podrá hacer el registro
    Given se está realizando un registro
    When no se selecciona “Aceptar términos y condiciones”
    Then no se realiza el registro

Scenario: The one where la aplicación manda una notificación de recordatorio del evento
    Given se realizó un registro
    When la fecha del evento es cercana (2 días antes)
    Then se envía una notificación de recordatorio del evento


Scenario: The one where la aplicación manda un correo de recordatorio del evento
    Given se realizó un registro
    When la fecha del evento es cercana (2 días antes)
    Then se envía un correo de recordatorio del evento