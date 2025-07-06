Feature: US12 - Generación de reportes de estado de presupuesto
    Como usuario,
    Quiero ver reportes semanales de mi presupuesto
    Para identificar patrones y mejorar mis hábitos financieros

    Scenario Outline: Reporte generado exitosamente
        Given que el usuario ha <estado_uso>
        When llega el <frecuencia>
        Then el sistema genera y muestra <contenido_reporte>

        Examples:
            | estado_uso                | frecuencia         | contenido_reporte                                                       |
            | usado la app regularmente | final de la semana | un reporte con el estado actual del presupuesto y sugerencias de ahorro |

    Scenario Outline: Reporte fallido por falta de datos
        Given que <condicion_usuario>
        When se genera el reporte semanal
        Then el sistema muestra: <mensaje_error>

        Examples:
            | condicion_usuario                            | mensaje_error                                                           |
            | no se han registrado movimientos financieros | “No se encontraron datos suficientes para generar un reporte detallado” |
