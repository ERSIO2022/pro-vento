Feature: un evento y esté previamente registrado en otro evento con el mismo horario.
   La aplicación estará en enfocada en organización y una buena logística en eventos dentro de la universidad de nombre ITESO. Esto es necesario para no generar espacios en blanco en un evento por personas que son incapaces de asisitir por estar ya ocupados.
 
 Scenario: El registro en la aplicación me dirige a la pagína principal.
 Given estoy en el registro
 When me registro
 Then estoy en la pagina principal.
Scenario: Seleccionar el modal del evento.
 Given estoy en la página principal
 When toco un modal.
 Then abre el modal.
Scenario: Tengo un evento para mañana.
  Given Me registre en un evento
  When tengo un evento para mañana
  Then aparece una notificación avisand que tengo un evento mañana.

