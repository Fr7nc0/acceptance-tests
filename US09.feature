Feature: US09 - Integración de análisis financiero con dispositivos
    Como usuario,
    Quiero integrar los datos recopilados por mis dispositivos
    Para que el análisis financiero refleje mi consumo real

    Scenario Outline: Integración exitosa
        Given que el usuario ha conectado <estado_dispositivos>
        When accede a la sección de <seccion_alertas> y asigna <tipo_notificacion> a cada uno
        Then el sistema guarda la configuración y envía las alertas según lo establecido

        Examples:
            | estado_dispositivos | seccion_alertas | tipo_notificacion       |
            | varios dispositivos | alertas         | tipos de notificaciones |

    Scenario Outline: Integración fallida
        Given que el usuario configura <accion_alerta>
        When no guarda los cambios
        Then el sistema debe advertirle: <mensaje_error>

        Examples:
            | accion_alerta | mensaje_error                                  |
            | alertas       | “Debe guardar la configuración antes de salir” |
