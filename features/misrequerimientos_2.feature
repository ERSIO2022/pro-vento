Feature: Como usuario quiero saber el cupo de invitados con el que cuenta cada evento en tiempo real
    Es una función que muestra el número de asistentes totales del evento.

Scenario: El registro nos dirige al login institucional del ITESO

    Given estoy en el registro
    When lleno los campos solicitados 
    Then entro a la página de inicio

Scenario: Si no se cuenta con correo de ITESO no se puede crear una cuenta

    Given estoy en el área de registro
    When es persona exterior al ITESO
    Then se coloca el correo electrónico

Scenario: Una vez creada la cuenta con correo del ITESO ya no se puede reutilizar ese correo para crear otra cuenta

    Given estoy en el registro
    When coloca su correo
    Then muestra notificación de correo expirado
    