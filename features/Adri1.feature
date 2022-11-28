Feature: Como usuario quiero poder tener una cuenta con mi correo ITESO para poder acreditar que soy miembro de la comunidad ITESO
  Es una aplicación de uso exclusivo para miembros de la comunidad ITESO, por lo tanto para el registro se necesitará contar con el correo institucional.
 
 Scenario: El registro nos dirige al login institucional del ITESO
    Given estoy en el registro
    When lleno los campos
    Then entro a la página de inicio

 Scenario: El registro nos dirige al login institucional del ITESO con contraceña incorrecta
    Given estoy en el registro
    When las contraseñas no coinciden
    Then alerta de error en las contraseñas
    Then no se crea la cuenta

 Scenario: Registro negado
    Given estoy en el registro
    When no se verifica el correo
    Then niega la creación de la cuenta

 Scenario: Si no se cuenta con correo de ITESO no se puede crear una cuenta
    Given estoy en el área de registro
    Given es persona exterior al ITESO
    When se coloca el correo
    Then no se puede crear cuenta

Scenario: Una vez creada la cuenta con correo del ITESO ya no se puede reutilizar ese correo para crear otra cuenta
    Given estoy en el registro
    When coloco un correo que ya registré antes
    Then no se puede crear cuenta
    Then ofrece recuperar contraseña

   Scenario: Si el correo del ITESO se encuentra inactivo, no permite registrarse en la aplicación
    Given estoy en el registro
    Given es ex-perteneciente a la comunidad ITESO
    When coloca su correo
    Then muestra notificación de correo expirado
    Then no se crea la cuenta