Feature: US11 - Alerta al superar límites de gasto
    Como usuario,
    Quiero recibir alertas cuando me acerque o supere mis límites de gasto
    Para poder controlar mejor mis finanzas

    Scenario Outline: Notificación de alertas exitosa
        Given que el usuario establece <tipo_limite>
        When se aproxima a <evento>
        Then la app le envía una <tipo_alerta>

        Examples:
            | tipo_limite      | evento                                | tipo_alerta            |
            | límites de gasto | sobrepasar el límite en una categoría | notificación de alerta |

    Scenario Outline: Notificación de alertas fallida
        Given que el usuario establece <tipo_limite>
        When el sistema no logra enviar la notificación
        Then debe <accion_fallo> y mostrar <advertencia>

        Examples:
            | tipo_limite      | accion_fallo                 | advertencia                              |
            | límites de gasto | registrar el intento fallido | una advertencia al usuario al reingresar |