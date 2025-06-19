Feature: US04-Evaluación previa de conocimientos en finanzas
    Como usuario,
    Quiero realizar un cuestionario financiero inicial antes del curso
    Para que la aplicación determine mi nivel financiero y me recomiende el curso adecuado

    Scenario Outline: Recomendación de curso exitosa
        Given que el usuario accede al <tipo_acceso>
        When responde todas las preguntas del <tipo_cuestionario> y hace clic en <accion_enviar>
        Then el sistema debe analizar las <tipo_respuestas>, asignar un <nivel_financiero> y mostrar la <recomendacion>

        Examples:
            | tipo_acceso                                   | tipo_cuestionario    | accion_enviar       | tipo_respuestas | nivel_financiero | recomendacion                   |
            | curso de educación financiera por primera vez | cuestionario inicial | “Enviar respuestas” | respuestas      | nivel financiero | recomendación de curso adecuada |

    Scenario Outline: Recomendación de curso fallida
        Given que el usuario accede al <tipo_acceso>
        When intenta enviar el formulario sin completar <estado_formulario>
        Then el sistema debe mostrar un mensaje de error indicando <mensaje_error>

        Examples:
            | tipo_acceso          | estado_formulario                | mensaje_error                                              |
            | cuestionario inicial | todas las preguntas obligatorias | que debe completar todas las respuestas antes de continuar |
