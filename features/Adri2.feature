Feature: Gestionar la cantidad de personas que asisten a los eventos
La aplicación contará con varios eventos donde caada uno tiene un cupo máximo de asistentes
 
 Scenario: Me registro a un evento
    Given estoy en el listado de eventos
    When selecciono un evento
    Then quedo registrado en el evento

 Scenario: Me registro a un evento con cupo lleno
    Given estoy en el listado de eventos
    When esta el cupo lleno
    Then alerta de error al registrarse
    Then no se une al evento

    Scenario: El evento ya haya expirado
    Given estoy en el listado de eventos
    Given el evento ya es uno viejo
    When intento registrarme
    Then no se puede unir al evento

    Scenario:Busca un evento inexistente

    Given estoy en el listado de eventos
    Given busco un evento que no existe
    When doy click a buscar
    Then marca que el evento no existe
    Then se regresa al listado