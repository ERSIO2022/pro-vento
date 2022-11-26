Feature: Como usuario del ITESO, quiero saber los horarios y la disponibilidad de cada evento.
    Los horarios permiten al usuario facilitar el tiempo de interés y si el evento está lleno o hay cupo.


Scenario: Si el evento fue realizado, el programa marca "evento realizado".

    Given Evento no disponible
    When Evento fue realizadoThen Sistema 
    Then Evento como realizado


