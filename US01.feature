Feature: US01-Registrar datos financieros
    Como usuario,
    Quiero registrar el saldo de mis cuentas bancarias
    Para recibir el análisis de mis ingresos y gastos con la ayuda del sistema

    Scenario Outline: Ingreso de datos de manera correcta
        Given que el usuario ingreso al apartado de <apartado>
        When el usuario haga click en el botón <boton>
        Then el sistema deberá mostrar una ventana donde se le pedirá al usuario rellenar sus datos como <tipo_dato>
        And una vez que el usuario complete sus datos
        Then el sistema deberá guardar los datos y mostrar un mensaje que dice <mensaje_exito>

        Examples:
            | apartado                        | boton                              | tipo_dato                  | mensaje_exito              |
            | análisis predictivo de finanzas | “Registrar datos para el análisis” | saldo de cuentas bancarias | “Ingreso de datos exitoso” |

    Scenario Outline: Error al enviar datos al sistema
        Given que el usuario ingreso al apartado de <apartado>
        When el usuario haga click en el botón <boton>
        Then el sistema deberá mostrar una ventana donde se le pedirá al usuario rellenar sus datos como <tipo_dato>
        And si el usuario pone <entrada_erronea> al momento de rellenar sus datos
        Then el sistema no podrá guardar los datos y mostrará un mensaje que diga <mensaje_error>

        Examples:
            | apartado                        | boton                              | tipo_dato                  | entrada_erronea                               | mensaje_error                                                              |
            | análisis predictivo de finanzas | “Registrar datos para el análisis” | saldo de cuentas bancarias | caracteres no permitidos o espacios en blanco | ”Error al registrar los datos, por favor, ingrese los datos correctamente” |

