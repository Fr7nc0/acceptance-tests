Feature: US02-Visualización de proyecciones financieras
    Como usuario,
    Quiero visualizar las predicciones de mis ingresos y gastos al final del mes
    Para determinar con anticipación si podré cubrir todos mis gastos

    Scenario Outline: Observación de proyecciones financieras exitosa
        Given que el usuario ingresó al apartado de <apartado>
        And el usuario seleccione la pestaña <pestana>
        When el usuario haga click en <boton_visualizar>
        Then el sistema mostrará los datos de su <proyeccion> como <tipo_datos>

        Examples:
            | apartado                 | pestana                       | boton_visualizar                 | proyeccion            | tipo_datos                             |
            | proyecciones financieras | generar proyección financiera | visualizar proyección financiera | proyección financiera | ingresos y gastos para el final de mes |

    Scenario Outline: Observación de proyecciones financieras fallida
        Given que el usuario ingresó al apartado de <apartado>
        And el usuario seleccione la pestaña <pestana>
        When el usuario haga click en <boton_visualizar>
        And <condicion_fallida>
        Then el sistema mostrará un mensaje que diga <mensaje_error>

        Examples:
            | apartado                 | pestana                       | boton_visualizar                 | condicion_fallida                                                | mensaje_error                                                               |
            | proyecciones financieras | generar proyección financiera | visualizar proyección financiera | no haya datos suficientes para generar una proyección financiera | “No se pudo generar la proyección, no se encontraron los datos suficientes” |

