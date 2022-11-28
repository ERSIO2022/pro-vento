Feature: Forma de asegurar que el alumno asista al evento.
La aplicación mandará una alerta cuando se acerque la fecha del evento para recordar que deben de asistir
 
Scenario: Se acerca la fecha del evento
Given estoy registrado en el evento
Given estoy al tanto de las notificaciones
When recibo notificación
Then recuerdo que tengo un evento proximo

Scenario: Se acerca la fecha del evento pero no recuerdo
Given estoy registrado en el evento
Given estoy al tanto de las notificaciones
When recibo notificación
Then no recuerdo el evento

Scenario: Si al registrarme no ingrese bien mis datos
Given estoy registrado en el evento
When se manda notificación
Then no me llega la notificación
Then no me entero del evento