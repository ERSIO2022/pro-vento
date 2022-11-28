Feature: El sistema debe de ser capaz de agregar categorías a un evento o publicación.
Es una aplicación de informacion sobre los eventos de ITESO 
 
Scenario: Dar de alta el evento
Given estoy por publicar un evento
When lleno los campos
Then se publica el evento
Then se coloca en la categoria en la que pertenece

Scenario: Busqueda de eventos
Given estoy en el listado de eventos
When coloco una categoria
Then se filtra la lista a lo que me interesa
Then se elige un evento

Scenario: Busqueda de eventos con busqueda
Given estoy en el listado de eventos
Given coloco una categoria que no esta en las opciones
When le doy en buscar
Then se muestra que aun no existe esa categoria