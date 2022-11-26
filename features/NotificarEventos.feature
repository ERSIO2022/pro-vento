Feature: Como usuario del ITESO, quiero ser notificado de los eventos que no me he registrado.
    El registro permite identificar usuarios registrados y usuarios que no se han registrado.

Scenario: The one where el usuario no cuenta con un registro previo, se notifica una recomendación de los eventos de los próximos.

    Given Usuario no se registra en evento. 
    When Usuario no registra evento
    Then Usuario recibe notificación para registrar 

Scenario: The one where el usuario cuenta con un registro de un evento, la aplicación no debe recomendar un evento en la misma hora.

    Given Usuario registra evento en una hora en específica.
    When Usuario registrado. 
    Then Usuario no recibe notificaciones en la misma hora.

Scenario: The one where se puede generar una cuenta temporal, si eres parte de la comunidad ITESO.

    Given Usuario es parte de la comunidad
    When Usuario no tiene cuenta 
    Then Usuario generar cuenta temporal

Scenario: The one where los tipos de cuenta para recibir notificación son como Alumno, Profesor, Empleado y Egresado.

    Given Cuenta de usuario es Alumno
    When Usuario no registra ningún evento
    Then Usuario recibe recomendación de evento