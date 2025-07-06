Feature: US10 - Generación de presupuesto personalizado
    Como usuario,
    Quiero recibir una recomendación de presupuesto al inicio del mes
    Para planificar mis finanzas según mis ingresos y hábitos de gasto

    Scenario Outline: Recomendación de presupuesto mensual exitosa
        Given que el usuario tiene <estado_datos>
        When <evento>
        Then la app genera una <recomendacion>

        Examples:
            | estado_datos                            | evento        | recomendacion                              |
            | ingresos y hábitos de gasto registrados | inicia el mes | recomendación de presupuesto personalizada |

    Scenario Outline: Recomendación de presupuesto mensual fallida
        Given que el usuario <estado_usuario>
        When solicita una recomendación de presupuesto
        Then el sistema muestra: <mensaje_error>

        Examples:
            | estado_usuario                   | mensaje_error                                               |
            | no ha registrado datos recientes | “No hay suficiente información para generar un presupuesto” |
