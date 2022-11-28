Feature: Agregar datos de los conferencistas.   
Es una aplicación de eventos ITESO y nos dirá los eventos y de que tratarán además de la información del panelista

Scenario: La sección cuenta con correo de los panelistas
   Given se llena información del evento 
   When publico el evento
   Then veo al panelista
