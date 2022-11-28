Feature: La aplicación debe de generar un aviso cuando un usuario intente registrarse a un evento y esté previamente registrado en otro evento con el mismo horario.
    La aplicación estará en enfocada en organización y una buena logística en eventos dentro de la universidad de nombre ITESO. Esto es necesario para no generar espacios en blanco en un evento por personas que son incapaces de asisitir por estar ya ocupados.

 Scenario: El registro en la aplicación me dirige a la pagína principal.
    Given estoy en el registro
    When me registro
    Then estoy en la pagina principal.
Scenario: Seleccionar el modal del evento.
  Given estoy en la página principal
  When toco un modal.
  Then abre el modal.
Scenario: Tengo un evento el mismo día y la misma fecha.
  Given abre el modal.
  And revisa la basé de datos de los eventos. 
  When tengo un evento el mismo día y la misma fecha
  Then aparece una notificación avisando que no puedes asistir.
  And se desactiva el botón de inscribir.
 