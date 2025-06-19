Feature: US03-Notificación de alerta ante signos de endeudamiento financiero
    Como usuario,
    Quiero recibir alertas del sistema que determinen posibles patrones de riesgo de endeudamiento
    Para poder tomar medidas preventivas

    Scenario Outline: Notificación de posible endeudamiento exitosa
        Given que el usuario ingresó al apartado de <apartado>
        And ingresa a la pestaña <pestana>
        When el usuario presione la opción de <opcion_alerta>
        Then el sistema le notificará cuando hay <riesgo_detectado> en el <origen_datos>

        Examples:
            | apartado             | pestana       | opcion_alerta                      | riesgo_detectado        | origen_datos                  |
            | análisis de finanzas | configuración | notificar alertas de endeudamiento | riesgo de endeudamiento | análisis de datos financieros |

    Scenario Outline: Fallo al activar notificación de alerta
        Given que el usuario ingresó al apartado de <apartado>
        And accedió a la pestaña de <pestana>
        When intente activar la opción <opcion_alerta> y ocurra <causa_fallo>
        Then el sistema debe mostrar un mensaje: <mensaje_error>

        Examples:
            | apartado             | pestana       | opcion_alerta                        | causa_fallo          | mensaje_error                                                     |
            | análisis de finanzas | configuración | “Notificar alertas de endeudamiento” | un error del sistema | “No se pudo activar la alerta en este momento. Intente más tarde” |
