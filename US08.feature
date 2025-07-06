Feature: US08 - Configuración de alertas personalizadas por dispositivo
    Como usuario,
    Quiero asignar tipos de notificación a cada dispositivo conectado
    Para recibir alertas específicas según el tipo de dispositivo

    Scenario Outline: Configuración de alerta exitosa
        Given que el usuario ha conectado <estado_dispositivos>
        When accede a la sección de <seccion_alertas> y asigna <tipo_notificacion> a cada uno
        Then el sistema guarda la configuración y envía las alertas según lo establecido

        Examples:
            | estado_dispositivos | seccion_alertas | tipo_notificacion       |
            | varios dispositivos | alertas         | tipos de notificaciones |

    Scenario Outline: Configuración de alerta fallida
        Given que el usuario configura <accion_alerta>
        When no guarda los cambios
        Then el sistema debe advertirle: <mensaje_error>

        Examples:
            | accion_alerta | mensaje_error                                  |
            | alertas       | “Debe guardar la configuración antes de salir” |
