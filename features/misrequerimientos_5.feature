Feature: Como usuario del ITESO, quiero recibir notificaciones para recordarme de mis eventos 24 horas antes y 1 hora antes del evento.
    Esta función notifica horas 24 horas antes el inicio del evento e incluso notifica 1 hora antes del inicio del evento.

Scenario: El sistema debe registrar usuarios

    Given el usuario no esté registrado en el evento.
    When el usuario llene el formato de registro
    Then el sistema registra al usuario en una base de datos

Scenario: La aplicación manda una notificación de recordatorio del evento

    Given Usuario realizó un registro
    When Sistema detecta la fecha del evento 24 horas y 1 hora antes.
    Then Sistema envía una notificación de recordatorio del evento

Scenario: Sistema debe leer la base de datos de los eventos con los usuarios registrado

    Given Evento tiene fecha de inicio
    When Sistema valida eventos que inician 24 horas antes.
    And Sistema valida eventos que inician 1 hora antes
    Then Sistema notifica al usuario 24 horas antes el inicio del evento
    And Sistema notifica al usario 1 hora antes el inicio del evento.