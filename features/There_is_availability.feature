Feature: As a user I want to know when the registration ofIs the event quota is completed.
  The application will be focused on organization and good logistics in events within the university named ITESO. This is necessary for good organization.

  Scenario:The one where El registro en la aplicación me dirige a la pagína principal.
    Given estoy en el registro
    When me registro
    Then me dirige a la pagina principal.
  
  Scenario: The one where Seleccionar el modal del evento.
    Given estoy en la página principal
    When me registro.
    Then me dirige a la pagina principal.
  
  Scenario:The one where Si no cuento con un correo válido del Iteso no puedo darme de alta al evento.
    Given no cuento con una cuenta validada por el ITESO.
    When intento dar clic en registrarme al evento.
    Then no es posible.
  Scenario: The one where Si logro acreditar mi correo del iteso puedo darme de alta al evento.
    Given cuento con una cuenta validada por el ITESO.  
    When intento dar clic en registrarme al evento.
    Then me registra en el evento.
  
  Scenario: The one where Una vez creada mi cuenta con mi correo del iteso ya no se puede registrar otra vez la perona.
    Given me encuentro en la base de datos del ITESO.
    When me registro al evento.
    Then no es posible volverme registrar.

  Scenario: The one where Que el HOST puede crear el evento.
    Given existe el rol del HOST.
    And ingresa.
    When da clic en crear evento.
    Then puede agregar la información del evento.

  Scenario: The one where Que el HOST agregue el número especifico de personas que puedan asistir.
    Given el HOST puede crear un evento.
    When aparece ingresar el número de integrantes.
    Then el HOST especifica el número permitido de espectadores.

  Scenario: The one where Que se bloque por llenar el cupo de personas.
    Given esta validado que es usuario del iteso.
    And selecciona el evento.
    And el host establecio un número especifico de personas.
    When da clic en ingresar.
    Then no es posible por que se lleno el cupo.