Feature: US13 - Reproducción del video del producto en la Landing Page
    Como visitante del sitio
    Quiero ver un video explicativo del producto
    Para comprender su funcionalidad con accesibilidad garantizada

    Scenario Outline: Reproducción exitosa
        Given que el usuario accede al <ubicacion>
        When entra a la sección <seccion_video>
        Then puede reproducir un video con <caracteristicas_accesibilidad>

        Examples:
            | ubicacion    | seccion_video       | caracteristicas_accesibilidad              |
            | Landing Page | “About the Product” | controles accesibles y subtítulos visibles |

    Scenario Outline: Accesibilidad del video
        Given que el usuario puede tener <condicion_usuario>
        When reproduce el video del producto
        Then este debe tener <requisitos_accesibilidad>

        Examples:
            | condicion_usuario      | requisitos_accesibilidad                                    |
            | dificultades auditivas | subtítulos en idioma local y opción de reproducción pausada |