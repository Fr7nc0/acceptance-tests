Feature: US14 - Visualización del video del equipo en la Landing Page
    Como visitante del sitio
    Quiero ver un video que presenta al equipo del proyecto
    Para conocer a las personas y sus roles con accesibilidad asegurada

    Scenario Outline: Reproducción del video del equipo
        Given que el usuario accede a la sección <seccion>
        When interactúa con el contenido
        Then puede reproducir un video que <descripcion_video>

        Examples:
            | seccion          | descripcion_video                                  |
            | “About the Team” | presenta al equipo y sus roles dentro del proyecto |

    Scenario Outline: Accesibilidad del video del equipo
        Given que el usuario puede tener <barrera>
        When ve el video
        Then debe contar con <elementos_accesibilidad>

        Examples:
            | barrera                          | elementos_accesibilidad                                                             |
            | barreras idiomáticas o auditivas | subtítulos en al menos dos idiomas y una breve descripción textual debajo del video |
