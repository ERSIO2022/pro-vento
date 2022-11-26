Feature: Como usuario del ITESO, quiero ser notificado de los últimos eventos del día
    La notificación invita al Usuario a registrarse a los eventos del día.



Scenario: El sistema debe registrar usuarios.

    Given El usuario no esté registrado en el evento.
    When El usuario llene el formato de registro
    Then El sistema registra al usuario en una base de datos


