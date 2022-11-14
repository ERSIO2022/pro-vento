Feature: Como usuario, quiero registrarme en algún evento a través de la aplicación
La aplicación permite a los usuarios realizar un registro, a través de que inserten sus datos para asegurar su lugar en un evento de la universidad ITESO.

Scenario: The one where contar con una cuenta
    Given cuento con una cuenta
    When ingreso a la página
    Then me permite ingresar sesión

Scenario: The one where iniciar sesión en la aplicación
    Given ingreso a la página de Civiteso
    When coloco mi usuario y contraseña
    Then inicio sesión en la aplicación

Scenario: The one where no se inicia sesión por datos incorrectos
    Given ingreso a la página de Civiteso
    When ingreso mi usuario y contraseña pero son incorrectos
    Then no puedo iniciar sesión y me aparece una ventana “datos incorrectos, intente de nuevo”

Scenario: The one where seleccionar pestaña de "registro"
    Given ingreso a Civiteso
    When selecciono la pestaña de registro
    Then me abre la sección de registro

Scenario: The one where se completan todos los datos correspondientes para poder realizar el registro
    Given seleccioné la pestaña de registro
    When realizo registro
    Then ingreso todos los datos para completar el registro

Scenario: The one where si no se registran todos los datos no se podrá realizar el registro
    Given seleccioné la pestaña de registro
    When ingreso algunos de los datos para completar el registro
    Then no se realiza el registro porque los datos están incompletos

Scenario: The one where si no quiere registrarse a ningún evento en ese momento, puede regresar a la pantalla de inicio
    Given seleccioné la pestaña de registro
    When no quiero registrar un evento en ese momento
    Then regreso a la pantalla de inicio

Scenario: The one where si no quiere registrarse a ningún evento en ese momento, puede cerrar sesión
    Given seleccioné la pestaña de registro
    When no quiero registrar un evento en ese momento
    Then cierro sesión

Scenario: The one where validar que el registro se guarde correctamente (correo)
    Given quiero confirmar mi asistencia a un evento
    When di click a “inscribirse”
    Then me llega un correo validando mi registro

Scenario: The one where validar que el registro se guarde correctamente (ventana)
    Given quiero confirmar mi asistencia a un evento
    When di click a “inscribirse”
    Then me aparece una ventana confirmando mi registro

Scenario: The one where la aplicación guarda en la base de datos correspondiente los datos del usuario y del evento al que se registró
    Given se realiza un registro
    When se envían los datos a la base de datos
    Then los datos (usuario y evento) se guardan en la base de datos

Scenario: The one where si el registro no se realiza correctamente, aparecerá una ventana que indique "registro no realizado, intente de nuevo"
    Given se ingresan los datos correspondientes para el registro
    When se realiza un registro pero ocurre un error
    Then No se capturó y aparece una ventana que indica "registro no realizado, intente de nuevo"

Scenario: The one where no se ingresan los datos correspondientes, por lo que no se realizará el registro y aparecerá una ventana que indique "registro no realizado, intente de nuevo"
    Given no se ingresan los datos correspondientes para el registro
    When se realiza un registro
    Then No se captura y aparece una ventana que indica "registro no realizado, intente de nuevo"

Scenario: The one where se envía un correo para afirmar que el registro se realizó y que los datos se guardaron correctamente
    Given quiero confirmar mi registro a un evento
    When selecciono “registro completo”
    Then recibo un correo validando mi registro

Scenario: The one where si no tiene una cuenta con su correo institucional para ingresar a la aplicación, no podrá registrarse
    Given quiero crear una cuenta en Civiteso
    When no se ingresa un correo institucional
    Then no se podrá crear la cuenta

Scenario: The one where si se aceptan los términos y condiciones, no se podrá hacer el registro
    Given se está realizando un registro
    When se selecciona “Aceptar términos y condiciones”
    Then se completa el registro

Scenario: The one where si no se aceptan los términos y condiciones, no se podrá hacer el registro
    Given se está realizando un registro
    When no se selecciona “Aceptar términos y condiciones”
    Then no se realiza el registro
